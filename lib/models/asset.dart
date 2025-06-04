import 'package:cmms_v3/models/status.dart';

class Asset {
  final String id;
  final String name;
  final bool hasCriticalFault;
  final bool hasMinorFault;
  final bool isUnderReview;
  final bool isAwaitingParts;

  AssetStatus get status {
    if (hasCriticalFault) return AssetStatus.redX;
    if (isUnderReview) return AssetStatus.redDash;
    if (isAwaitingParts) return AssetStatus.redSlash;
    if (hasMinorFault) return AssetStatus.circleRedX;
    return AssetStatus.green;
  }

  Asset({
    required this.id,
    required this.name,
    this.hasCriticalFault = false,
    this.hasMinorFault = false,
    this.isUnderReview = false,
    this.isAwaitingParts = false,
  });
}
