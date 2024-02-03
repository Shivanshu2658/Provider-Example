import 'package:flutter/material.dart';

class UserProvider extends ChangeNotifier{
  String userName;

  UserProvider( {this.userName = "Hello" });

  void changeName ({ required String newUserName,}) async{
    userName = newUserName;
    notifyListeners();
  }
}