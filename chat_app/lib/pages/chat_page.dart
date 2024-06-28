import 'package:chat_app/component/chat_text.dart';
import 'package:flutter/material.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 80,

        // centerTitle: true,
        title: ListTile(
          leading: CircleAvatar(
            radius: 21,
            backgroundImage: AssetImage('assets/images/girl.jpg'),
          ),
          title: Text(
            'Sabila Sayma',
            style: TextStyle(fontSize: 18),
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.call_outlined,
                size: 30,
              )),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_call_outlined,
                  size: 30,
                )),
          ),
        ],
      ),
      body: Stack(
        children: [
          Positioned(bottom: 0, left: 0, right: 0, child: ChatText()),
        ],
      ),
    );
  }
}
