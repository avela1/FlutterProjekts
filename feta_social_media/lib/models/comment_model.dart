class Comment {
  final String id;
  final String postId;
  final String userId;
  final String content;
  final DateTime timestamp;
   int likes;
   int dislikes;
   int reply;

  Comment({
    required this.id,
    required this.postId,
    required this.userId,
    required this.content,
    required this.timestamp,
    this.likes=0,
    this.dislikes = 0,
    this.reply = 0,
    
  });

  factory Comment.fromJson(Map<String, dynamic> json) {
    return Comment(
      id: json['id'],
      userId: json['userId'],
      postId: json['postId'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'postId': postId,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
