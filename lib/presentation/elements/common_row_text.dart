import 'package:flutter/material.dart';
class CommonRowText extends StatelessWidget {
  const CommonRowText({
    Key? key,
    required this.rowIcon,
    required this.rowText,
  }) : super(key: key);

  final IconData rowIcon;
  final String rowText;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 70 , left: 30, bottom: 28 , right: 24),
      child: Row(
        children: [
          Icon(rowIcon, size: 18, color: Color(0xff9098B1),),
          SizedBox(width: 20,),
          Text(rowText , style: TextStyle(fontSize: 16 , fontFamily: 'Poppins', fontWeight: FontWeight.w700),),
        ],
      ),
    );
  }
}
