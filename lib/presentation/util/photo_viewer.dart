import 'package:conectacampo/presentation/core/theme.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

class PhotoViewer extends StatelessWidget {
  const PhotoViewer(this.path);

  final String path;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ColorSet.green1,

      ),
      body: PhotoView(
        imageProvider: NetworkImage(path),
      ),
    );
  }
}
