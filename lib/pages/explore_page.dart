import 'package:flutter/material.dart';
import 'package:netclan_demo/components/custom_sidebar.dart';
import 'package:netclan_demo/constants/custom_colours.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    var userName = "Jhon Doe";
    return Scaffold(
      drawer: const CustomSidebar(),
      appBar: AppBar(
        backgroundColor: CustomColors().mainTheme,
        title: Text("Howdy $userName !!"),
        actions: [
          GestureDetector(
            child: Image.asset(
              'assets/icons/suitcase.png',
              color: Colors.white,
              height: 10,
            ),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
