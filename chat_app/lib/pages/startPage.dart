import 'package:chat_app/component/button.dart';
import 'package:chat_app/pages/auth/sign_up_page.dart';
import 'package:flutter/material.dart';

class SingUp extends StatefulWidget {
  const SingUp({super.key});

  @override
  State<SingUp> createState() => _SingUpState();
}

class _SingUpState extends State<SingUp> {
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Padding(
        padding: EdgeInsets.only(left: 10.0, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
                child: Text(
              'Connect  \n friends',
              style: TextStyle(fontSize: 66, color: Colors.white),
            )),
            const Center(
                child: Text(
              'easily &\nquickly',
              style: TextStyle(
                  fontSize: 66,
                  color: Colors.white,
                  fontWeight: FontWeight.w700),
            )),
            SizedBox(
              height: 40,
            ),
            const Text(
              'Our chat app is the perfect way to stay\nconnected with friends and family.',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            SizedBox(
              height: 20,
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
            //           size: 66,
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
            //           size: 66,
            //         ),
            //       )
            //     ],
            //   ),
            // ),
            Text(
              '_______or______',
              style: TextStyle(color: Colors.white, fontSize: 33),
            ),
            SizedBox(
              height: 20,
            ),
            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignUpPage()));
              },
              child: Button(
                  color: Colors.white,
                  text: 'Get Star',
                  height: screen_height * 0.05,
                  width: screen_width * 0.3),
            ),
            // Row(
            //   crossAxisAlignment: CrossAxisAlignment.center,
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Text(
            //       'Existing account? ',
            //       style: TextStyle(color: Colors.white),
            //     ),
            //     TextButton(
            //         onPressed: () {
            //           Navigator.push(
            //               context,
            //               MaterialPageRoute(
            //                   builder: (context) => LoginTochatbox()));
            //         },
            //         child: Text(
            //           'Login in',
            //           selectionColor: Colors.white,
            //         ))
            //   ],
            // )
          ],
        ),
      ),
    );
  }
}
