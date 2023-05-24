import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netclan_demo/constants/custom_colours.dart';
import 'package:netclan_demo/pages/explore_page.dart';

class FilterScreen extends StatelessWidget {
  const FilterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors().mainTheme,
        title: const Text("Filters"),
        actions: [
          GestureDetector(
            child: Align(
              alignment: Alignment.centerRight,
              child: Container(
                padding: const EdgeInsets.all(8.0),
                child: const Text(
                  "Clear",
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
              ),
            ),
            onTap: () {
              Get.to(
                () => const ExplorePage(),
              );
            },
          )
        ],
      ),
    );
  }
}
