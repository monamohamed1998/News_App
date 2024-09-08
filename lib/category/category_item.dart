import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';
import 'package:news_app/models/catergory_model.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({required this.catergoryModel, required this.index});

  final index;
  final CatergoryModel catergoryModel;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.27,
      decoration: BoxDecoration(
          color: catergoryModel.catColor,
          borderRadius: BorderRadiusDirectional.only(
            topStart: Radius.circular(20),
            topEnd: Radius.circular(20),
            bottomStart: Radius.circular(index.isEven ? 20 : 0),
            bottomEnd: Radius.circular(index.isEven ? 0 : 20),
          )),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset("${catergoryModel.img}"),
          Text(
            "${catergoryModel.label}",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
          SizedBox(
            height: 5,
          ),
        ],
      ),
    );
  }
}
