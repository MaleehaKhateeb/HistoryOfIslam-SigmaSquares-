
import 'dart:convert';
import 'dart:developer';
import 'package:islamic_app/services/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserStorage {
  static late SharedPreferences preferences;

  static initializeUserStorage() async {
    preferences = await SharedPreferences.getInstance();
    log("user storage initialized...");

  }

  // keys
  static const loggedinUserData = "USER_DATA";
  static const allUsersData = "ALL_USERS_DATA";

  // getters and setters

  

  static setUserData(UserModel user) async {
    await preferences.setString(loggedinUserData, jsonEncode(user.toJson()));
  }

  static removeUser() async {
    await preferences.setString(loggedinUserData, '');
  }

  static Future<UserModel?> getLoggedinUser() async {
    var data = preferences.getString(loggedinUserData);
    var json = jsonDecode(data!);
    return UserModel.fromJson(json);
  }

  static addUser(UserModel user) async {
    List<UserModel?> users = await getAllUsersData();
    users.add(user);
    List<String> usersStringList = [];
    for (var element in users) {
      usersStringList.add(jsonEncode(element!.toJson()));
    }
    print(usersStringList);
    await preferences.setStringList(allUsersData, usersStringList);
  }

  static Future<List<UserModel?>> getAllUsersData() async {
    var data = preferences.getStringList(allUsersData);
    List<UserModel?> users = [];
    print(data);
    if(data != null){
    for (var element in data) {
      users.add(UserModel.fromJson(jsonDecode(element)));
    }
    }
    return users;
  }

}