import 'package:flutter/material.dart';

class InputText extends StatefulWidget {
  final String h_text;
  final controller;
  final bool isHide;
  final key_board_type;

  InputText(
      {super.key,
      required this.h_text,
      required this.controller,
      this.isHide = false,
      required this.key_board_type});

  @override
  State<InputText> createState() => _InputTextState();
}

class _InputTextState extends State<InputText> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0, right: 30),
      child: TextFormField(
        //autofocus: false,
        controller: widget.controller,
        decoration: InputDecoration(
          hintText: widget.h_text,
          hintStyle: TextStyle(color: Color(0xff24786D)),
        ),

        validator: (value) {
          if (value!.isEmpty) {
            return widget.h_text;
          }
          return null;
        },
        obscureText: widget.isHide,
      ),
    );
  }
}
