import 'package:flutter/material.dart';
class AuthTextField extends StatelessWidget {
  const AuthTextField({
    Key? key,
    required this.hintText,
    required this.prefixIcon,
  }) : super(key: key);
  final String hintText;
  final IconData prefixIcon;

  @override
  Widget build(BuildContext context) {
    return Theme(
      child: TextFormField(
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: TextStyle(fontSize: 12, color: Color(0xff9098B1)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xffEBF0FF)),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(width: 1, color: Color(0xff40BFFF)),
          ),
          prefixIcon: Icon(
            prefixIcon,
          ),
        ),
      ),
      data: Theme.of(context).copyWith(
        primaryColor: Color(0xff40BFFF),
      ),
    );
  }
}