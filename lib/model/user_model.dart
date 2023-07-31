import 'package:cloud_firestore/cloud_firestore.dart';

class MyUser {
  final String? userID;
  String? email;
  String? surname;
  String? name;
  DateTime? createdAt;

  MyUser({
    this.name,
    this.surname,

    
    required this.userID,
    required this.email,
  });
  Map<String, dynamic> toMap() {
    return {
      'userID': userID,
      'email': email,
      'name': name,
      'username': surname ,

      'createdAt': createdAt ?? FieldValue.serverTimestamp(),
    };
  }

  MyUser.fromMap(Map<String, dynamic> map)
      : userID = map['userID'],
        email = map['email'],
        name = map['name'],
        surname = map['surname'],
        createdAt = (map['createdAt'] as Timestamp).toDate();

  @override
  String toString() {
    return 'MyUser{userID=$userID, email=$email, username=$surname,  name=$name  createdAt=$createdAt}';
  }
}
