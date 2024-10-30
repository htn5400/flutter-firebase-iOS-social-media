import 'package:flutter/material.dart';

class MyTextfield extends StatelessWidget {
  final String hintText;
  final bool obscureText; //how will we hide the password
  final TextEditingController controller; // how we will access what is inputted into the text box
  const MyTextfield({
    super.key,
    required this.hintText,
    required this.obscureText,
    required this.controller,  
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12)
        ),
        hintText: hintText),
      obscureText: obscureText,
    );
  }
}