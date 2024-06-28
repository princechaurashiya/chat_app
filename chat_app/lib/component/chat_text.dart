import 'package:flutter/material.dart';

class ChatText extends StatefulWidget {
  const ChatText({super.key});

  @override
  State<ChatText> createState() => _ChatTextState();
}

class _ChatTextState extends State<ChatText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10.0),
      child: TextFormField(
        decoration: InputDecoration(
            hintText: 'Message',
            suffixIcon: Row(mainAxisSize: MainAxisSize.min, children: <Widget>[
              IconButton(
                icon: Icon(Icons.attach_file_sharp),
                onPressed: () {
                  // Action for first icon
                },
              ),
              IconButton(
                icon: Icon(Icons.photo_camera_outlined),
                onPressed: () {
                  // Action for second icon
                },
              )
            ]),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
