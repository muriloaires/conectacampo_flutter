import 'package:mime/mime.dart';

bool hasValidMimeType(String path) {
  final validMimeTypes = [
    'image/jpg',
    'image/jpeg',
    'image/jpe',
    'image/png',
    'image/webp'
  ];
  final mime = lookupMimeType(path);
  return validMimeTypes.contains(mime);
}
