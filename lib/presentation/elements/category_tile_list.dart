import 'package:flutter/material.dart';

class CategoryTileList extends StatelessWidget {
  final String categoryTitle;
  final String categoryImage;

// constructor
  CategoryTileList({required this.categoryTitle, required this.categoryImage});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListTile(
        leading: Image.asset(
          categoryImage,
        ),
        title: Text(
          categoryTitle,
          style: TextStyle(
            fontSize: 14,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
