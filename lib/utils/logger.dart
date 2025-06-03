import 'package:flutter/foundation.dart';

void logInfo(String message) {
  final timestamp = DateTime.now().toIso8601String();
  debugPrint('[$timestamp] $message');
}
