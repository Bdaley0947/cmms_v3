class ServiceRequest {
  final String id;
  final String assetId;
  final String submittedBy;
  final DateTime timestamp;
  final String description;

  ServiceRequest({
    required this.id,
    required this.assetId,
    required this.submittedBy,
    required this.timestamp,
    required this.description,
  });

  @override
  String toString() {
    return 'Request for Asset $assetId by $submittedBy on $timestamp:\n$description';
  }
}
