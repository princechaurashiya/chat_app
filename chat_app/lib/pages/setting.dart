import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/serchButton.dart';
import 'package:flutter/material.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          // toolbarHeight: 80,
          backgroundColor: Colors.black,
          leading: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15),
            child: Center(child: const SearchButton()),
          ),
          centerTitle: true,
          title: Padding(
            padding: const EdgeInsets.only(top: 15.0),
            child: Text(
              'Settings',
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
              ),
            ),
            Positioned(
              bottom: 00,
              right: 00,
              left: 00,
              top: 50,
              child: Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30))),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 20,
                      ),
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: const CircleAvatar(
                            radius: 21,
                            backgroundImage:
                                AssetImage('assets/images/girl.jpg'),
                          ),
                          title: const Text(
                            'Sabila Sayma',
                            style: TextStyle(fontSize: 18),
                          ),
                          subtitle: Text('Never give up'),
                          trailing: IconButton(
                              onPressed: () {},
                              icon: Icon(Icons.qr_code_2_rounded)),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.key_outlined),
                          title: Text('Account'),
                          subtitle: Text('Privacy,Security, change number'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.chat_outlined),
                          title: Text('Chat'),
                          subtitle: Text('Chat history,theme,wallpapers'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.notifications_outlined),
                          title: Text('Notification'),
                          subtitle: Text('Messages,group and others'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.help_center_outlined),
                          title: Text('Help'),
                          subtitle:
                              Text('Help center,contact us, privacy policy'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.storage),
                          title: Text('Storage and data'),
                          subtitle: Text('Network usage,stogare usage'),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Icon(Icons.person_2_outlined),
                          title: Text('Invite a friend'),
                          // subtitle: Text('Privacy,Security, change number'),
                        ),
                      ),
                    ],
                  )),
            )
          ],
        ));
  }
}
