import 'package:flutter/material.dart';
import 'package:netclan_demo/components/custom_sidebar.dart';
import 'package:netclan_demo/constants/custom_colours.dart';

import '../components/custom_appbar.dart';

class ExplorePage extends StatelessWidget {
  const ExplorePage({super.key});

  @override
  Widget build(BuildContext context) {
    var userName = "Jhon Doe";
    var location = "Somewhere on earth";
    return Scaffold(
      drawer: const CustomSidebar(),
      appBar: CustomAppbar(userName: userName, location: location),
    );
  }
}
