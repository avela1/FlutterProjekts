class Post {
  final String uname;
  final String uprofile;
  final String? message;
  final String? postImg;
  final DateTime postDate;
  final String likes;
  final String comments;
  final String shares;
  final String views;

  const Post({
    required this.uname,
    required this.uprofile,
    this.message,
    this.postImg,
    required this.postDate,
    required this.likes,
    required this.comments,
    required this.shares,
    required this.views,
  });
}
