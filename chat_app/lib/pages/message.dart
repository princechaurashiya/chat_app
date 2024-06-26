import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/search_field_for_text.dart';
import 'package:chat_app/component/serchButton.dart';
import 'package:chat_app/pages/chat_page.dart';
import 'package:flutter/material.dart';

class Message extends StatefulWidget {
  const Message({super.key});

  @override
  State<Message> createState() => _MessageState();
}

class _MessageState extends State<Message> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 80,
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15),
            child: Center(
                child: GestureDetector(
                    onTap: () {
                      print('hello');
                      SearchFieldForText();
                      setState(() {});
                    },
                    child: const SearchButton())),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Calls',
              style: TextStyle(color: mycolor2),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10.0, top: 15),
              child: Image.asset('assets/images/profile.png'),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              color: Colors.black,
              child: Container(
                //color: Colors.blue,
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding: const EdgeInsets.only(
                            top: 25, left: 15.0, right: 15),
                        child: Column(
                          children: [
                            CircleAvatar(
                              maxRadius: 33,
                              backgroundImage: AssetImage(
                                'assets/images/girl.jpg',
                              ),
                            ),
                            Text(
                              'Your Status',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 18),
                            )
                          ],
                        ),
                      );
                    }),
              ),

              // child: Row(
              //   children: [
              //     Column(
              //       children: [
              //         CircleAvatar(
              //           maxRadius: 44,
              //           backgroundImage: AssetImage(
              //             'assets/images/person1.jpg',
              //           ),
              //         ),
              //         Text(
              //           'Your Status',
              //           style: TextStyle(color: Colors.white, fontSize: 18),
              //         )
              //       ],
              //     ),
              //   ],
              // ),
            ),
            Positioned(
              bottom: 00,
              right: 00,
              left: 00,
              top: 150,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: ListView.builder(
                    itemCount: 40,
                    itemBuilder: (context, index) {
                      return Card(
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ChatPage()));
                          },
                          child: ListTile(
                            leading: CircleAvatar(
                              backgroundImage:
                                  AssetImage('assets/images/person1.jpg'),
                            ),
                            title: Text(
                              'Alex Linderson',
                              style: TextStyle(fontSize: 20),
                            ),
                            subtitle: Text('How are you Today'),
                            trailing: Column(
                              children: [
                                Text(
                                  '2 min ago',
                                  style: TextStyle(fontSize: 15),
                                ),
                                Container(
                                  height: 30,
                                  width: 30,
                                  decoration: BoxDecoration(
                                      color: Color.fromARGB(255, 187, 20, 8),
                                      borderRadius: BorderRadius.circular(20)),
                                  child: Center(
                                    child: Text(
                                      '3',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 19),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
              ),
            )
          ],
        ));
  }
}
