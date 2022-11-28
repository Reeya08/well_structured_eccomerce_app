import 'package:flutter/material.dart';
import 'package:well_structured_eccomerce_app/models/category.dart';
import 'package:well_structured_eccomerce_app/presentation/elements/category_tile_list.dart';

class CategoryViewList extends StatelessWidget {
  List<CategoryModel> categoryList = [
    CategoryModel(
        categoryImage: 'assets/images/dress.png', categoryName: 'Dress'),
    CategoryModel(
        categoryImage: 'assets/images/high_heels.png',
        categoryName: 'High Heels'),
    CategoryModel(
        categoryImage: 'assets/images/man_bag.png', categoryName: 'Man Bag'),
    CategoryModel(
        categoryImage: 'assets/images/shirt.png', categoryName: 'Skirt'),
    CategoryModel(
        categoryImage: 'assets/images/man_pants.png',
        categoryName: 'Man Pants'),
    CategoryModel(
        categoryImage: 'assets/images/t_shirt.png', categoryName: 'T-Shirt'),
    CategoryModel(
        categoryImage: 'assets/images/woman_bag.png',
        categoryName: 'Women Bag'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // use this method when we have very large amount of data comming from database/category list and want to store it
      body: Column(
        children: [
          ListView.builder(
              itemCount: categoryList.length,
              itemBuilder: (context, i) {
                return CategoryTileList(
                  //store name coming from database/category list
                  categoryTitle: categoryList[i].categoryName,
                  //stores the image coming from database/category list
                  categoryImage: categoryList[i].categoryImage,
                );
              }),
        ],
      ),
    );
  }
}
//
// import 'package:flutter/material.dart';
//
// class Test extends StatelessWidget {
//   Test({Key? key}) : super(key: key);
//   List<String> cities = ['kohat', 'preshawar'];
//   List<String> urbans = ['2', '1', '3'];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: ListView.builder(
//             itemCount: cities.length,
//             itemBuilder: (context, index) {
//               return Text(cities[index] + U);
//             }));
//   }
// }
