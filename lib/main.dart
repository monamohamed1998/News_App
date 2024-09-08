import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/category/categories_grid.dart';
import 'package:news_app/first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        FirstPage.routeName: (context) => FirstPage(),
        CategoriesGrid.routeName: (context) => CategoriesGrid(),
      },
      initialRoute: FirstPage.routeName,
      theme: AppTheme.lightmode,
    );
  }
}
