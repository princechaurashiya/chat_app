import 'package:chat_app/component/color.dart';
import 'package:flutter/material.dart';

class SearchText extends StatefulWidget {
  const SearchText({super.key});

  @override
  State<SearchText> createState() => _SearchTextState();
}

class _SearchTextState extends State<SearchText> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(22)),
      height: 45,
      child: TextFormField(
        style: TextStyle(color: mycolor2),
        decoration: InputDecoration(
            hintText: 'Search',
            hintStyle: TextStyle(
              color: mycolor2,
            ),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(color: mycolor2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(22),
                borderSide: BorderSide(color: mycolor2))),
      ),
    );
  }
}
