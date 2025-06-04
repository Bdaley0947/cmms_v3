import 'package:cmms_v3/models/service_request.dart';
import 'package:uuid/uuid.dart';

ServiceRequest parseEmailToRequest(String emailText) {
  final lines = emailText.trim().split('\n');
  final assetId = lines.firstWhere((line) => line.toLowerCase().startsWith('asset:'), orElse: () => 'asset:unknown')
      .split(':').last.trim();
  final submittedBy = lines.firstWhere((line) => line.toLowerCase().startsWith('from:'), orElse: () => 'from:unknown')
      .split(':').last.trim();
  final description = lines.skip(2).join('\n').trim();

  return ServiceRequest(
    id: const Uuid().v4(),
    assetId: assetId,
    submittedBy: submittedBy,
    timestamp: DateTime.now(),
    description: description,
  );
}
