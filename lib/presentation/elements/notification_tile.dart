import 'package:flutter/material.dart';

class NotificationListTile extends StatelessWidget {
  const NotificationListTile({
    Key? key,
    required this.leadingImagePath,
    required this.titleText,
    required this.circleText,
  }) : super(key: key);
  final String leadingImagePath;
  final String titleText;
  final String circleText;

  @override
  Widget build(BuildContext context) {
    return  ListTile(
      leading: Image.asset(
        leadingImagePath,
      ),
      title: Text(
        titleText,
        style: TextStyle(
          fontSize: 14,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
      ),
      trailing: CircleAvatar(
        radius: 12,
        backgroundColor: Color(0xffFB7181),
        child: Text(
          circleText,
          style: TextStyle(
              fontSize: 10,
              color: Colors.white,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w700),
        ),
      ),
    );
  }
}
