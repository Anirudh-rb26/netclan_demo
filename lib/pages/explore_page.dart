import 'package:floating_action_bubble/floating_action_bubble.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netclan_demo/components/custom_sidebar.dart';
import 'package:netclan_demo/components/filter_page.dart';
import 'package:netclan_demo/constants/custom_colours.dart';

import '../components/custom_appbar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _animationController;

  @override
  void initState() {
    _animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
    );
    final curvedAnimation =
        CurvedAnimation(parent: _animationController, curve: Curves.easeInOut);
    _animation = Tween<double>(
      begin: 0,
      end: 1,
    ).animate(curvedAnimation);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var userName = "Jhon Doe";
    var location = "Somewhere on earth";
    return Scaffold(
      drawer: const CustomSidebar(),
      appBar: CustomAppbar(userName: userName, location: location),
      body: Column(
        children: [
          Positioned(
            // alignment: Alignment.topCenter,
            top: 100,
            child: Column(
              children: const [
                // Top navigation bar.
                TopNavigationBar(),
                // Search feild and filter
                SearchFeild(),
              ],
            ),
          ),
          const Align(
            alignment: Alignment.center,
            child: Content(),
          )
        ],
      ),
      bottomNavigationBar: const CustomBottomNavigationBar(),
      floatingActionButton: FloatingActionBubble(
        items: <Bubble>[
          Bubble(
            icon: Icons.favorite,
            iconColor: CustomColors().highlightColor,
            title: "Dating",
            titleStyle: TextStyle(color: CustomColors().highlightColor),
            bubbleColor: CustomColors().mainTheme,
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            icon: Icons.favorite,
            iconColor: CustomColors().highlightColor,
            title: "Dating",
            titleStyle: TextStyle(color: CustomColors().highlightColor),
            bubbleColor: CustomColors().mainTheme,
            onPress: () {
              _animationController.reverse();
            },
          ),
          Bubble(
            icon: Icons.favorite,
            iconColor: CustomColors().highlightColor,
            title: "Dating",
            titleStyle: TextStyle(color: CustomColors().highlightColor),
            bubbleColor: CustomColors().mainTheme,
            onPress: () {
              _animationController.reverse();
            },
          ),
        ],
        onPress: () => _animationController.isCompleted
            ? _animationController.reverse()
            : _animationController.forward(),
        iconData: Icons.add,
        iconColor: Colors.white,
        backGroundColor: CustomColors().mainTheme,
        animation: _animation,
      ),
    );
  }
}

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {},
      backgroundColor: CustomColors().mainTheme,
      child: const Icon(Icons.add),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      unselectedItemColor: CustomColors().mainTheme,
      unselectedLabelStyle: TextStyle(
        color: CustomColors().mainTheme,
        fontSize: 14,
      ),
      selectedLabelStyle: TextStyle(
        color: CustomColors().mainTheme,
        fontSize: 14,
      ),
      currentIndex: 0,
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.remove_red_eye,
            color: CustomColors().mainTheme,
          ),
          label: "Explore",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.network_cell,
            color: CustomColors().mainTheme,
          ),
          label: "Network",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.chat,
            color: CustomColors().mainTheme,
          ),
          label: "Chat",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.contact_mail,
            color: CustomColors().mainTheme,
          ),
          label: "Contacts",
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.tag,
            color: CustomColors().mainTheme,
          ),
          label: "Hashtags",
        ),
      ],
    );
  }
}

class SearchFeild extends StatelessWidget {
  const SearchFeild({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                contentPadding: const EdgeInsets.all(8.0),
                // isCollapsed: true,
                isDense: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 0.8)),
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
              ),
            ),
          ),
          const SortWidget(),
        ],
      ),
    );
  }
}

class SortWidget extends StatelessWidget {
  const SortWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Get.to(
          () => const FilterScreen(),
        );
      },
      icon: const Icon(Icons.sort),
    );
  }
}

class TopNavigationBar extends StatelessWidget {
  const TopNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: CustomColors().mainTheme.withOpacity(0.9),
      height: 60,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.people_alt,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.luggage,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.storefront,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class Content extends StatelessWidget {
  const Content({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Column(
          children: [
            Text(
              "Whoops!",
              style: TextStyle(
                color: CustomColors().mainTheme,
              ),
            ),
            Text(
              "Slow or no internet connection\nPlease check your internet settings.,",
              style: TextStyle(
                color: CustomColors().mainTheme.withOpacity(0.7),
              ),
              textAlign: TextAlign.center,
            ),
            GestureDetector(
              child: Container(
                height: 38,
                width: 190,
                decoration: BoxDecoration(
                  color: CustomColors().mainTheme,
                  borderRadius: BorderRadius.circular(80),
                ),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Try Again",
                    style: TextStyle(
                      color: CustomColors().backgroundColor,
                      fontSize: 18,
                    ),
                  ),
                ),
              ),
              onTap: () {},
            )
          ],
        ),
      ],
    );
  }
}
