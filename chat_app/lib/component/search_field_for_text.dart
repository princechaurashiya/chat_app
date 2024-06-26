import 'package:flutter/material.dart';

class SearchFieldForText extends StatefulWidget {
  const SearchFieldForText({super.key});

  @override
  State<SearchFieldForText> createState() => _SearchFieldForTextState();
}

class _SearchFieldForTextState extends State<SearchFieldForText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: TextFormField(
        decoration: InputDecoration(
            suffix: Row(
              children: [
                IconButton(onPressed: () {}, icon: Icon(Icons.attach_file))
              ],
            ),
            hintText: 'Message',
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)))),
      ),
    );
  }
}
