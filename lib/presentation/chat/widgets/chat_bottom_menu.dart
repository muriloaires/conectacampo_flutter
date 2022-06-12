import 'dart:async';

import 'package:conectacampo/application/chat/chat_bloc.dart';
import 'package:conectacampo/presentation/chat/widgets/record_button.dart';
import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ChatBottomMenu extends StatefulWidget {
  const ChatBottomMenu();

  @override
  State<ChatBottomMenu> createState() => _ChatBottomMenuState();
}

class _ChatBottomMenuState extends State<ChatBottomMenu> {
  bool hasText = false;
  bool isRecording = false;
  String textAudioTime = '';
  Stream<int>? timerStream;
  StreamSubscription<int>? timerSubscription;
  String minuteStr = '00';
  String secondStr = '00';
  TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      padding: const EdgeInsets.all(8.0),
      color: ColorSet.green1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(
              Icons.add,
              color: Colors.white,
            ),
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (dialogContext) {
                  return ListView(
                    shrinkWrap: true,
                    children: [
                      ListTile(
                        leading: const Icon(Icons.add_a_photo_outlined),
                        title: const Text('Enviar imagem'),
                        onTap: () {
                          context
                              .read<ChatBloc>()
                              .add(const ChatEvent.onBtnSendImageTap());
                          Navigator.of(dialogContext).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.file_copy_outlined),
                        title: const Text('Enviar arquivo'),
                        onTap: () {
                          context
                              .read<ChatBloc>()
                              .add(const ChatEvent.onBtnSendFileTap());
                          Navigator.of(dialogContext).pop();
                        },
                      ),
                      ListTile(
                        leading: const Icon(Icons.location_on_outlined),
                        title: const Text('Enviar localização'),
                        onTap: () {
                          context
                              .read<ChatBloc>()
                              .add(const ChatEvent.onBtnSendLocationTap());
                          Navigator.of(dialogContext).pop();
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          Expanded(
            child: isRecording
                ? Row(
                    children: [
                      Text(
                        '$minuteStr:$secondStr',
                        style:
                            const TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const SizedBox(width: 10),
                      const Text(
                        'Arraste para cancelar',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                      const Icon(
                        Icons.chevron_left,
                        color: Colors.white,
                        size: 36,
                      ),
                    ],
                  )
                : TextField(
                    onChanged: (value) {
                      setState(() {
                        hasText = value.trim().isNotEmpty;
                      });
                    },
                    controller: controller,
                    cursorColor: Colors.white,
                    textAlign: TextAlign.left,
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      contentPadding: const EdgeInsets.all(8.0),
                      focusColor: Colors.white,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                        borderSide:
                            const BorderSide(color: Colors.white, width: 0.0),
                        borderRadius: BorderRadius.circular(25.0),
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      fillColor: Colors.white30,
                    ),
                  ),
          ),
          if (hasText)
            IconButton(
              onPressed: () {
                context
                    .read<ChatBloc>()
                    .add(ChatEvent.onBtnSendPressed(controller.text));
              },
              icon: const Icon(
                Icons.send,
                color: Colors.white,
              ),
            )
          else
            RecordButton(
              onStartRecording: () {
                setState(() {
                  isRecording = true;
                });
                timerStream = stopWatchStream();
                timerSubscription = timerStream?.listen((int newTick) {
                  setState(() {
                    minuteStr = ((newTick / 60) % 60)
                        .floor()
                        .toString()
                        .padLeft(2, '0');
                    secondStr =
                        (newTick % 60).floor().toString().padLeft(2, '0');
                  });
                });
              },
              onEndRecording: () {
                timerSubscription?.cancel();
                timerStream = null;
                minuteStr = '00';
                secondStr = '00';
                setState(() {
                  isRecording = false;
                });
              },
            ),
        ],
      ),
    );
  }

  Stream<int> stopWatchStream() {
    StreamController<int>? streamController;
    Timer? timer;
    const timerInterval = Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer?.cancel();
        timer = null;
        counter = 0;
        streamController?.close();
      }
    }

    void tick(_) {
      counter++;
      streamController?.add(counter);
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }
}
