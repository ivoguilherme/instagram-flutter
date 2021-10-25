class UsersModel {
  String? name;
  String? photo;

  UsersModel({
    this.name,
    this.photo,
  });

  UsersModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    photo = json['photo'];
  }
}
