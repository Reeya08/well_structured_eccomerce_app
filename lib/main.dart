import 'package:flutter/material.dart';
import 'package:well_structured_eccomerce_app/presentation/views/category/category_view_list.dart';
import 'package:well_structured_eccomerce_app/presentation/views/create_account/create_account.dart';
import 'package:well_structured_eccomerce_app/presentation/views/search/search_view.dart';
import 'package:well_structured_eccomerce_app/presentation/views/splash/splash_view.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    // home: SplashView(),
    //   home: SearchView(),
    //   home: CategoryView(),
    //   home: CategoryViewList(),
home:  CreateAccount(),
    );
  }
}


