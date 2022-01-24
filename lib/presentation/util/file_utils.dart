import 'package:mime/mime.dart';

bool hasValidMimeType(String path) {
  final validMimeTypes = [
    'image/png',
    'image/gif',
    'image/jpg',
    'image/jpeg',
    'image/pjpeg',
    'image/tiff',
    'image/bmp',
    'image/vnd.adobe.photoshop',
    'image/vnd.microsoft.icon',
    'image/webp',
  ];
  final mime = lookupMimeType(path);
  return validMimeTypes.contains(mime);
}
