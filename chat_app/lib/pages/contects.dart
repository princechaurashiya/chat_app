import 'package:chat_app/component/color.dart';
import 'package:chat_app/component/search_text.dart';
import 'package:chat_app/component/serchButton.dart';
import 'package:flutter/material.dart';

class Contects extends StatefulWidget {
  const Contects({super.key});

  @override
  State<Contects> createState() => _ContectsState();
}

class _ContectsState extends State<Contects> {
  bool isSearch = true;
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
                    setState(() {
                      isSearch = !isSearch;
                    });
                  },
                  child: const SearchButton())),
        ),
        centerTitle: true,
        title: isSearch
            ? Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Text(
                  'Calls',
                  style: TextStyle(color: mycolor2),
                ),
              )
            : SearchText(),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 15),
            child: Image.asset('assets/images/profile.png'),
          )
        ],
      ),
    );
  }
}
