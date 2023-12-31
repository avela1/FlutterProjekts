class Story {
  final String id;
  final String userId;
  final String imageUrl;
  final DateTime timestamp;
  bool viewed;

  Story({
    required this.id,
    required this.userId,
    required this.imageUrl,
    required this.timestamp,
    this.viewed = false,
  });
}
