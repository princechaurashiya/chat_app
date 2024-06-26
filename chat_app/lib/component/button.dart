import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final bool loading;
  final Color color;
  final String text;
  final double height;
  final double width;
  Button(
      {super.key,
      required this.color,
      required this.text,
      required this.height,
      required this.width,
      this.loading = false});

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  //final _fromField = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    double screen_height = MediaQuery.of(context).size.height;
    double screen_width = MediaQuery.of(context).size.width;
    return Container(
      height: widget.height,
      width: widget.width,
      decoration: BoxDecoration(
        color: widget.color,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Center(
        child: widget.loading
            ? CircularProgressIndicator(
                strokeWidth: 3,
              )
            : Text(
                widget.text,
                style: TextStyle(fontSize: 18),
              ),
      ),
    );
  }
}
