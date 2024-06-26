import 'dart:async';

import 'package:chat_app/pages/auth/Login_toChatbox.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(
        Duration(seconds: 2),
        () => Navigator.push(context,
            MaterialPageRoute(builder: (context) => LoginTochatbox())));
  }
}
