enum AssetStatus {
  redX,           // Unsafe, do not operate
  circleRedX,     // Operable with restrictions
  redDash,        // Awaiting inspection or verification
  redSlash,       // Awaiting part, deferred maintenance
  green           // Fully mission-capable
}

extension AssetStatusLabel on AssetStatus {
  String get label {
    switch (this) {
      case AssetStatus.redX: return 'Red X';
      case AssetStatus.circleRedX: return 'Circle Red X';
      case AssetStatus.redDash: return 'Red Dash';
      case AssetStatus.redSlash: return 'Red Slash';
      case AssetStatus.green: return 'Green';
    }
  }
}
