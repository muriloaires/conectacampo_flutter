import 'dart:io';

import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';

class SendFilePage extends StatelessWidget {
  const SendFilePage(this.contentType, this.path);
  final String contentType;
  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_getTitle()),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ColorSet.green1,
        onPressed: () {
          Navigator.of(context).pop(path);
        },
        child: const Icon(Icons.send),
      ),
      body: Center(child: _getContentWidget()),
    );
  }

  String _getTitle() {
    switch (contentType) {
      case 'image':
        return 'Enviar imagem';
      case 'document':
        return 'Enviar arquivo';
      case 'location':
        return 'Enviar localização';
      default:
        return '';
    }
  }

  Widget _getContentWidget() {
    switch (contentType) {
      case 'image':
        return Image.file(
          File(path),
          fit: BoxFit.cover,
        );

      case 'document':
        return Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(Icons.file_present_outlined),
              const SizedBox(height: 10),
              Text(basename(path))
            ],
          ),
        );

      case 'location':
        return Text('Location');

      default:
        return Container();
    }
  }
}
