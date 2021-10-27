class UsersModel {
  String name;
  String photo;
  String username;
  String profilePictureURL;

  UsersModel({
    required this.name,
    required this.photo,
    required this.username,
    required this.profilePictureURL,
  });

  static getUsers() {
    return [
      UsersModel(
        name: 'William Saum',
        username: 'willsaum',
        profilePictureURL: 'assets/images/profile_1.jpeg',
        photo: 'assets/images/feed_1.jpeg',
      ),
      UsersModel(
        name: 'Kristi Carmody',
        username: 'kristi',
        profilePictureURL: 'assets/images/profile_2.jpeg',
        photo: 'assets/images/feed_2.jpeg',
      ),
      UsersModel(
        name: 'Tiago Santos',
        username: 'tsantos',
        profilePictureURL: 'assets/images/profile_3.jpeg',
        photo: 'assets/images/feed_3.jpeg',
      ),
      UsersModel(
        name: 'Candace Goins',
        username: 'goins',
        profilePictureURL: 'assets/images/profile_4.jpeg',
        photo: 'assets/images/feed_4.jpeg',
      )
    ];
  }
}
