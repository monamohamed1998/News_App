import 'package:flutter/material.dart';
import 'package:news_app/app_theme.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: MediaQuery.sizeOf(context).height * 0.25,
          width: MediaQuery.sizeOf(context).width * 0.8,
          decoration: BoxDecoration(
            color: AppTheme.Primary,
          ),
          child: Center(
              child: Text(
            "News App",
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(fontWeight: FontWeight.bold, fontSize: 25),
          )),
        ),
        Container(
          height: MediaQuery.sizeOf(context).height * 0.75,
          width: MediaQuery.sizeOf(context).width * 0.8,
          decoration: BoxDecoration(
            color: AppTheme.white,
          ),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.list,
                      size: 35,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Categories",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold, color: AppTheme.black),
                    )
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Icon(
                      Icons.settings,
                      size: 35,
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Text(
                      "Settings",
                      style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                          fontWeight: FontWeight.bold, color: AppTheme.black),
                    )
                  ],
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
