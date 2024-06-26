import 'package:chat_app/component/button.dart';
import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/inputText.dart';
import 'package:chat_app/pages/auth/Login_toChatbox.dart';
import 'package:chat_app/pages/btm_nav_bar.dart';
import 'package:chat_app/pages/utils/utils.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool loading = false;

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final _fromKey = GlobalKey<FormState>();
  bool changeColor = false;
  final emailController = TextEditingController();
  final paswordController = TextEditingController();
  final nameController = TextEditingController();
  final cnfPassController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 80,
              ),
              const Center(
                child: Text(
                  'Sign up with Email',
                  style: TextStyle(
                      color: Color(0xff000E08),
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Center(
                child: Text(
                  'Get chatting with friends and family today by\n              signing up for our chat app!',
                  style: TextStyle(
                    color: Color(0xff797C7B),
                    fontSize: 15,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                height: 20,
              ),
              Form(
                  key: _fromKey,
                  child: Column(
                    children: [
                      InputText(
                        key_board_type: TextInputType.number,
                        h_text: ' Your Name',
                        controller: nameController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                        key_board_type: TextInputType.number,
                        h_text: 'Your email',
                        controller: emailController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                        key_board_type: TextInputType.number,
                        h_text: 'Password',
                        controller: paswordController,
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      InputText(
                        key_board_type: TextInputType.number,
                        h_text: 'Confirm Password',
                        controller: cnfPassController,
                        isHide: true,
                      ),
                    ],
                  )),
              const SizedBox(
                height: 40,
              ),
              GestureDetector(
                // highlightColor: changeColor ? Colors.red : Colors.blue,
                // focusColor: changeColor ? Colors.red : Colors.blue,
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => BottomNavBar()));
                },
                child: GestureDetector(
                  onTap: () {
                    if (_fromKey.currentState!.validate()) {
                      setState(() {
                        loading = true;
                      });
                      _auth
                          .createUserWithEmailAndPassword(
                              email: emailController.text.toString(),
                              password: paswordController.toString())
                          .then((Value) {
                        setState(() {
                          loading = false;
                        });
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BottomNavBar()));
                      }).onError(
                        (error, stackTrace) {
                          Utils().tostMessage(error.toString());
                          setState(() {
                            loading = false;
                          });
                        },
                      );
                    }
                  },
                  child: Center(
                    child: Button(
                      loading: loading,
                      color: mycolor1,
                      text: 'Create an account',
                      height: screen_height * 0.05,
                      width: screen_width * 0.6,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 70.0, right: 70),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.facebook,
                        size: 44,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.g_mobiledata_outlined,
                        size: 55,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.apple,
                        size: 44,
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'You have already account ',
                    style: TextStyle(color: mycolor2),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginTochatbox(),
                        ),
                      );
                    },
                    child: Text(
                      'Login in',
                      selectionColor: Colors.white,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
