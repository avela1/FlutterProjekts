class Post {
  final String id;
  final String userId;
  final DateTime postDate;
  final List<String>? imageUrl;
  String? caption;
  int likes;
  int comments;

  Post({
    required this.id,
    required this.userId,
    this.imageUrl,
    required this.postDate,
    this.caption = "",
    this.likes = 0,
    this.comments = 0,
  });
}
