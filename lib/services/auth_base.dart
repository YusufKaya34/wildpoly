

import 'package:wildpoly/model/user_model.dart';

abstract class AuthBase {
  Future<MyUser?> currentUser();

  Future<bool> signOut();
  Future<MyUser?> signInEmailAndPassword(String email,String password);
  Future<MyUser?> signUp(String email,String password,);
  Future<dynamic> sendPasswordResetEmail(String email);
}
