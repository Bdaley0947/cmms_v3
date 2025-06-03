class ServiceRequest {
  final String id;
  final String description;
  final String assetId;
  final DateTime createdAt;

  ServiceRequest({
    required this.id,
    required this.description,
    required this.assetId,
    required this.createdAt,
  });

  factory ServiceRequest.fromJson(Map<String, dynamic> json) {
    return ServiceRequest(
      id: json['id'],
      description: json['description'],
      assetId: json['assetId'],
      createdAt: DateTime.parse(json['createdAt']),
    );
  }

  Map<String, dynamic> toJson() => {
        'id': id,
        'description': description,
        'assetId': assetId,
        'createdAt': createdAt.toIso8601String(),
      };
}
