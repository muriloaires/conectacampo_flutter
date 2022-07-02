import 'package:conectacampo/application/chat/chat_bloc.dart';
import 'package:conectacampo/application/chat/message/message_bloc.dart';
import 'package:conectacampo/domain/auth/user.dart';
import 'package:conectacampo/domain/chat/chat_message.dart';
import 'package:conectacampo/presentation/chat/message/baloon.dart';
import 'package:conectacampo/presentation/chat/widgets/message_widget.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:intl/intl.dart';

class AudioMessage extends MessageWidget {
  const AudioMessage(
    ChatMessage message,
    User currentUser,
    this.nextMesssage,
  ) : super(message, currentUser);

  final ChatMessage? nextMesssage;

  @override
  State<MessageWidget> createState() => _AudioMessageWidgetState();
}

class _AudioMessageWidgetState extends State<AudioMessage> {
  final FlutterSoundPlayer _mPlayer = FlutterSoundPlayer();

  bool _mPlayerIsInited = false;
  bool isPlaying = false;
  bool isPaused = false;
  bool isFromLoggedUser = false;
  double sliderValue = 0.0;

  @override
  void initState() {
    super.initState();
    isFromLoggedUser = widget.message.isFromLoggedUser(widget.currentUser);
    _mPlayer.openPlayer().then((value) {
      setState(() {
        _mPlayerIsInited = true;
      });
    });
  }

  @override
  void dispose() {
    stopPlayer();
    _mPlayer.closePlayer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MessageBloc, MessageState>(
      listener: (context, state) {
        if (state.isAutoPlay) {
          play(context, state);
        }
      },
      builder: (context, stateBuilder) {
        final state = context.read<MessageBloc>().state;
        Color sliderColor = ColorSet.green1.withAlpha(100);

        final date = DateTime.fromMillisecondsSinceEpoch(
          widget.message.audioDuration ?? 0,
          isUtc: true,
        );
        final audioDurationText = DateFormat('mm:ss', 'pt_BR').format(date);
        if (isFromLoggedUser) {
          sliderColor = Colors.white;
        } else {
          if (widget.message.audioReproduced ?? false) {
            sliderColor = Colors.lightBlue;
          } else {
            sliderColor = ColorSet.green1;
          }
        }

        return Baloon(
          message: widget.message,
          currentUser: widget.currentUser,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  IconButton(
                    onPressed: () {
                      if (isPaused) {
                        resume();
                      } else if (isPlaying) {
                        pause();
                      } else {
                        context
                            .read<MessageBloc>()
                            .add(const MessageEvent.onBtnPlayTapped());
                        play(context, state);
                      }
                    },
                    icon: Icon(
                      isPlaying ? Icons.pause : Icons.play_arrow,
                      color: isFromLoggedUser ? Colors.white : ColorSet.green1,
                    ),
                  ),
                  Slider(
                    value: sliderValue,
                    thumbColor: sliderColor,
                    inactiveColor: sliderColor.withAlpha(100),
                    activeColor: sliderColor,
                    onChanged: (value) {
                      setState(() {
                        sliderValue = value;
                        if ((isPaused || isPlaying) &&
                            widget.message.audioDuration! > 0.0) {
                          final setPlayerTo =
                              widget.message.audioDuration!.toDouble() * value;
                          _mPlayer.seekToPlayer(
                            Duration(milliseconds: setPlayerTo.toInt()),
                          );
                        } else {
                          play(context, state);
                          final setPlayerTo =
                              widget.message.audioDuration!.toDouble() * value;
                          _mPlayer.seekToPlayer(
                            Duration(milliseconds: setPlayerTo.toInt()),
                          );
                        }
                      });
                    },
                  )
                ],
              ),
              Text(
                audioDurationText,
                style: TextStyle(
                  color: isFromLoggedUser ? Colors.white : ColorSet.green1,
                ),
              )
            ],
          ),
        );
      },
    );
  }

  Future<void> play(BuildContext context, MessageState state) async {
    setState(() {
      isPlaying = true;
      isPaused = false;
    });
    _mPlayer.setSubscriptionDuration(const Duration(milliseconds: 100));
    _mPlayer.onProgress?.listen((event) {
      if (state.audioDuration > 0.0) {
        setState(() {
          sliderValue =
              event.position.inMilliseconds / state.audioDuration.toDouble();
        });
      }
    });
    context.read<ChatBloc>().add(ChatEvent.onAudioPlay(widget.message));
    await _mPlayer.startPlayer(
      fromURI: widget.message.fileUrl,
      codec: Codec.aacMP4,
      whenFinished: () {
        context.read<MessageBloc>().add(
              MessageEvent.onAudioFinished(isFromLoggedUser: isFromLoggedUser),
            );
        context.read<ChatBloc>().add(ChatEvent.onAudioFinished(widget.message));
        setState(() {
          isPlaying = false;
          isPaused = false;
          sliderValue = 0.0;
        });
      },
    );
  }

  Future<void> pause() async {
    setState(() {
      isPlaying = false;
      isPaused = true;
    });
    await _mPlayer.pausePlayer();
  }

  Future<void> resume() async {
    setState(() {
      isPlaying = true;
      isPaused = false;
    });
    await _mPlayer.resumePlayer();
  }

  Future<void> stopPlayer() async {
    await _mPlayer.stopPlayer();
  }
}
