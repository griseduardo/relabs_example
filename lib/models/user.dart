class User {
  final String accessToken;
  final String client;
  final String uid;

  const User({required this.accessToken, required this.client, required this.uid});

  factory User.fromJson(accessToken, client, uid) {
    return User(
      accessToken: accessToken,
      client: client,
      uid: uid
    );
  }
}
