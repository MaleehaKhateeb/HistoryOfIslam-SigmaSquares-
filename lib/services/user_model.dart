//Class of User Model
class UserModel {
  String? email;
  String? password;
  String? displayName;

  UserModel({this.email, this.password, this.displayName});
//From Json => Dart
  UserModel.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    password = json['password'];
    displayName = json['display_name'];
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['email'] = this.email;
    data['password'] = this.password;
    data['display_name'] = this.displayName;
    return data;
  }
}
