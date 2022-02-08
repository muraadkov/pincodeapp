import 'package:flutter/material.dart';

class PinNumber extends StatelessWidget {
  const PinNumber({Key? key, required this.textEditingController, required this.fillColor}) : super(key: key);
  final TextEditingController textEditingController;
  final Color fillColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30.0,
      height: 30.0,
      child: TextField(
        controller: textEditingController,
        enabled: false,
        obscureText: true,
        textAlign: TextAlign.center,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(16.0),
          border: const OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(30.0)),
            borderSide: BorderSide(
              color: Colors.transparent,
              width: 20.0,
            ),
          ),
          filled: true,
          fillColor: fillColor,
        ),
      ),
    );
  }
}