import 'dart:async';

import 'package:chat_app/pages/auth/Login_toChatbox.dart';
import 'package:chat_app/pages/btm_nav_bar.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    final auth = FirebaseAuth.instance;

    final user = UserCredential;

    if (user != null) {
      Timer(
          Duration(seconds: 2),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => BottomNavBar())));
    } else {
      Timer(
          Duration(seconds: 2),
          () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => LoginTochatbox())));
    }
  }
}
