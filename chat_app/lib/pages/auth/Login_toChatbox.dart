import 'package:chat_app/component/button.dart';
import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/inputText.dart';
import 'package:chat_app/pages/auth/sign_up_page.dart';
import 'package:chat_app/pages/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginTochatbox extends StatefulWidget {
  const LoginTochatbox({super.key});

  @override
  State<LoginTochatbox> createState() => _LoginTochatboxState();
}

class _LoginTochatboxState extends State<LoginTochatbox> {
  final _fromKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final paswordController = TextEditingController();

  FirebaseAuth _auth = FirebaseAuth.instance;

  @override
  void dispose() {
    // TODO: implement dispose

    emailController.dispose();
    paswordController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.height;
    return WillPopScope(
      onWillPop: () async {
        SystemNavigator.pop();
        return true;
      },
      child: Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            //crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 100,
              ),
              const Center(
                  child: Text(
                'Login to Chatbox',
                style: TextStyle(
                    color: Color(0xff000E08),
                    fontSize: 22,
                    fontWeight: FontWeight.w600),
              )),
              const SizedBox(
                height: 40,
              ),
              const Center(
                child: Text(
                  'Welcome back! Sign in using your social\n          acount or email to continue us',
                  style: TextStyle(
                    color: Color(0xff797C7B),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              // Padding(
              //   padding: const EdgeInsets.only(left: 70.0, right: 70),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.spaceAround,
              //     children: [
              //       IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.facebook,
              //           size: 55,
              //         ),
              //       ),
              //       IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.g_mobiledata_outlined,
              //           size: 66,
              //         ),
              //       ),
              //       IconButton(
              //         onPressed: () {},
              //         icon: Icon(
              //           Icons.apple,
              //           size: 55,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              Text(
                '______________or______________',
                style: TextStyle(color: mycolor2, fontSize: 22),
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      InputText(
                        key_board_type: TextInputType.emailAddress,
                        h_text: 'Enter Email',
                        controller: emailController,
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      InputText(
                        key_board_type: TextInputType.number,
                        h_text: 'Enter Password',
                        controller: paswordController,
                        isHide: true,
                      ),
                    ],
                  )),
              SizedBox(
                height: 80,
              ),
              GestureDetector(
                onTap: () {
                  print('Helo');
                  if (_fromKey.currentState!.validate()) {
                    _auth
                        .createUserWithEmailAndPassword(
                            email: emailController.text.toString(),
                            password: paswordController.text.toString())
                        .then((value) {})
                        .onError((error, StackTrace) {
                      Utils().tostMessage(error.toString());
                    });
                  }
                },
                child: Button(
                    // color: Color(0xffF3F6F6),
                    color: mycolor1,
                    text: 'Log in',
                    height: screen_height * 0.05,
                    width: screen_width * 0.4),
              ),
              SizedBox(
                height: 20,
              ),
              InkWell(
                focusColor: mycolor1,
                onTap: () {},
                child: TextButton(
                    onPressed: () {},
                    child: Text(
                      'Forgot password?',
                      style: TextStyle(color: mycolor1),
                    )),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "You don't have account",
                    style: TextStyle(color: mycolor2),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SignUpPage()));
                      },
                      child: Text(
                        'Sign Up',
                        selectionColor: Colors.white,
                      ))
                ],
              )
            ],
          ),
        )),
      ),
    );
  }
}
