import 'dart:convert';

import 'package:first_capstone/model/user_model/user_model.dart';
import 'package:flutter/services.dart';

class UsersRepo {
  List<UserModel> _users = [];
  late UserModel _currentUser;

  Future<List<UserModel>> loadAllUsers() async {
    final usersJson = await rootBundle.loadString("assets/data/users.json");
    _users = List.from(
      await jsonDecode(usersJson),
    ).map((item) => UserModel.fromJson(item)).toList();

    _currentUser=_users[0];
    return _users;
  }

  set setcurrentUser(UserModel user) {
    _currentUser = user;
  }

  UserModel get getCurrentUser =>_currentUser;
}
