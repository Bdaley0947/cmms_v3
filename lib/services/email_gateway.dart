import 'package:flutter/foundation.dart';

class EmailGateway {
  static void processIncomingEmail(String rawEmail) {
    if (kDebugMode) {
      debugPrint('[EmailGateway] Received email: \$rawEmail');
    }

    // TODO: Implement email parsing and action logic
  }
}
