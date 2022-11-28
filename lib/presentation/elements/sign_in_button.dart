import 'package:flutter/material.dart';
class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    required this.childText,
    required this.onPressed,
  }) : super(key: key);
  final String childText;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      child: ElevatedButton(
        onPressed: () {},
        child: Text(
          childText,
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Color(0xff40BFFF),
        ),
      ),
    );
  }
}