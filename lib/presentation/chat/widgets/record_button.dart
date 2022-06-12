// ignore_for_file: avoid_dynamic_calls

import 'dart:io';

import 'package:audio_session/audio_session.dart';
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_sound/flutter_sound.dart';
import 'package:flutter_sound_platform_interface/flutter_sound_recorder_platform_interface.dart';
import 'package:intl/intl.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:vibration/vibration.dart';

class RecordButton extends StatefulWidget {
  const RecordButton({
    required this.onStartRecording,
    required this.onEndRecording,
  });
  final Function onStartRecording;
  final Function onEndRecording;
  @override
  _RecordButtonState createState() => _RecordButtonState();
}

class _RecordButtonState extends State<RecordButton>
    with SingleTickerProviderStateMixin {
  final theSource = AudioSource.microphone;
  late AnimationController animationController;
  late Animation<double> animation;
  late double dxStartRecording;
  String path = '';
  final _codec = Codec.aacMP4;

  FlutterSoundRecorder? _mRecorder = FlutterSoundRecorder();
  bool _mPlayerIsInited = false;
  bool _mRecorderIsInited = false;

  bool cancelAudio = false;

  @override
  void initState() {
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1500),
    );
    animation = Tween(begin: 1.0, end: 0.0).animate(animationController);

    openTheRecorder().then((value) {
      setState(() {
        _mRecorderIsInited = true;
      });
    });
    super.initState();
  }

  bool isRecording = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPressStart: (details) {
        animationController.forward();
        animationController.repeat();
        dxStartRecording = details.globalPosition.dx;
        record();
        setState(() {
          isRecording = true;
          widget.onStartRecording();
        });
      },
      onLongPressEnd: (details) async {
        animationController.reset();
        animationController.stop();
        final dxEndRecording = details.globalPosition.dx;
        if (dxStartRecording - dxEndRecording > 200) {
          EasyLoading.showToast('Cancelado');
          cancelAudio = true;
          if (await Vibration.hasVibrator() ?? false) {
            Vibration.vibrate();
          }
        }
        stopRecorder();
        setState(() {
          isRecording = false;
          widget.onEndRecording();
        });
      },
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: FadeTransition(
          opacity: animation,
          child: Icon(
            Icons.mic,
            color: isRecording ? Colors.red : Colors.white,
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    animationController.dispose();

    _mRecorder!.closeRecorder();
    _mRecorder = null;
    super.dispose();
  }

  Future<void> record() async {
    path = await getFilePath();
    await _mRecorder!.startRecorder(
      toFile: path,
      codec: _codec,
      audioSource: theSource,
    );
  }

  Future<void> stopRecorder() async {
    await _mRecorder!.stopRecorder();
    if (cancelAudio) {
      await File(path).delete();
      cancelAudio = false;
    }
  }

  Future<void> openTheRecorder() async {
    if (!kIsWeb) {
      final status = await Permission.microphone.request();
      if (status != PermissionStatus.granted) {
        throw RecordingPermissionException('Microphone permission not granted');
      }
    }
    await _mRecorder!.openRecorder();

    final session = await AudioSession.instance;
    await session.configure(
      AudioSessionConfiguration(
        avAudioSessionCategory: AVAudioSessionCategory.playAndRecord,
        avAudioSessionCategoryOptions:
            AVAudioSessionCategoryOptions.allowBluetooth |
                AVAudioSessionCategoryOptions.defaultToSpeaker,
        avAudioSessionMode: AVAudioSessionMode.spokenAudio,
        avAudioSessionRouteSharingPolicy:
            AVAudioSessionRouteSharingPolicy.defaultPolicy,
        avAudioSessionSetActiveOptions: AVAudioSessionSetActiveOptions.none,
        androidAudioAttributes: const AndroidAudioAttributes(
          contentType: AndroidAudioContentType.speech,
          usage: AndroidAudioUsage.voiceCommunication,
        ),
        androidWillPauseWhenDucked: true,
      ),
    );

    _mRecorderIsInited = true;
  }

  Future<String> getFilePath() async {
    final DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyyMMddhhmmss');
    final String formatted = formatter.format(now);
    final appDocumentsDirectory = await getApplicationDocumentsDirectory(); // 1
    final appDocumentsPath = appDocumentsDirectory.path; // 2
    final filePath = '$appDocumentsPath/$formatted.mp4'; // 3
    return filePath;
  }
}
