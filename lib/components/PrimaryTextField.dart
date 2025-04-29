import 'package:flutter/material.dart';

class PrimaryTextField extends StatelessWidget {
  const PrimaryTextField({
    super.key, 
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.iconButton,
    this.obscureText,
  });

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final IconButton? iconButton;
  final bool? obscureText;

  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        border: OutlineInputBorder(),
        hintText: hintText,
        prefixIcon: Icon(Icons.email, color: Color.fromARGB(255, 109, 68, 255)),
        suffixIcon: iconButton,
      ),
      obscureText: obscureText ?? false,
    );
  }
}