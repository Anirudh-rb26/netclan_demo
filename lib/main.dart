import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netclan_demo/components/filter_page.dart';
import 'package:netclan_demo/constants/custom_colours.dart';

import 'pages/explore_page.dart';

void main() {
  runApp(
    const GetMaterialApp(
      home: MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: const ExplorePage(),
      // home: const FilterScreen(),
    );
  }
}
