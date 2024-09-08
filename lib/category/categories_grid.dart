import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/category/category_item.dart';
import 'package:news_app/models/catergory_model.dart';

class CategoriesGrid extends StatelessWidget {
  static const String routeName = 'caterodies_grid';
  List<CatergoryModel> categorymod = [
    CatergoryModel(
        img: "assets/images/ball.png", label: "Sport", catColor: AppTheme.red),
    CatergoryModel(
        img: "assets/images/health.png",
        label: "Health",
        catColor: AppTheme.babyblue),
    CatergoryModel(
        img: "assets/images/environment.png",
        label: "environment",
        catColor: AppTheme.blue),
    CatergoryModel(
        img: "assets/images/bussines.png",
        label: "bussines",
        catColor: AppTheme.brown),
    CatergoryModel(
        img: "assets/images/science.png",
        label: "science",
        catColor: AppTheme.pink),
    CatergoryModel(
        img: "assets/images/Politics.png",
        label: "Politics",
        catColor: AppTheme.yellow),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.symmetric(horizontal: 20),
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          Text(
            "Pick Your Category of interest",
            style:
                Theme.of(context).textTheme.titleLarge?.copyWith(fontSize: 25),
          ),
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisSpacing: 12, crossAxisSpacing: 12),
              itemBuilder: (context, index) => CategoryItem(
                index: index,
                catergoryModel: categorymod[index],
              ),
              itemCount: categorymod.length,
            ),
          )
        ],
      ),
    );
  }
}
