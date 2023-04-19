class User {
  int id;
  String title;
  String body;
  int userId;

  User({
    required this.id,
    required this.title,
    required this.body,
    required this.userId,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'body': body,
      'userId': userId,
    };
  }
}
