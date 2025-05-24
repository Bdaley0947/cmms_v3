class EventLogger {
  static final List<String> _log = [];

  static void log(String event) {
    final timestamp = DateTime.now().toIso8601String();
    _log.add('[$timestamp] $event');
  }

  static List<String> get entries => List.unmodifiable(_log);
}
