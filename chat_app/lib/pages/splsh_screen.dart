import 'package:chat_app/pages/firebase_services/splash_services.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices SplashScreen = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    SplashScreen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Container(
              height: 200,
              width: 200,
              child: Image.asset('assets/images/Logo.png'))),
    );
  }
}
