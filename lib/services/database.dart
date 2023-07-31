

import 'package:wildpoly/model/user_model.dart';

abstract class DB {
  Future<bool> saveUser(MyUser user);
  Future<MyUser> readUser(String userID);
  Future<List<MyUser>> getAllUser();
}
