import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/category/categories_grid.dart';
import 'package:news_app/drawer/home_drawer.dart';

class FirstPage extends StatelessWidget {
  static const String routeName = 'first_page';
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppTheme.white,
          image: DecorationImage(
              image: AssetImage(
                'assets/images/pattern.png',
              ),
              fit: BoxFit.cover)),
      child: Scaffold(
        appBar: AppBar(
          title: Text("News App"),
        ),
        body: CategoriesGrid(),
        drawer: HomeDrawer(),
      ),
    );
  }
}
