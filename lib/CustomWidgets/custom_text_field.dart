import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key key,
    this.hintText,
    this.prefixIcon,
    this.obscureText = false,
  }) : super(key: key);
  final String hintText;
  final IconData prefixIcon;
  final bool obscureText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: Card(
        elevation: 2,
        child: TextField(
          style: TextStyle(color: Colors.red, fontSize: 15),
          obscureText: obscureText,
          textAlignVertical: TextAlignVertical.center,
          cursorColor: Colors.red,
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.all(8),
            hintStyle: TextStyle(color: Colors.black , fontSize: 15),
            prefixIcon: Icon(
              prefixIcon,
              color: Colors.black,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
