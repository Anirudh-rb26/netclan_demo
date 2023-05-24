import 'package:flutter/material.dart';

import '../constants/custom_colours.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({
    super.key,
    required this.userName,
    required this.location,
  });

  final String userName;
  final String location;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: CustomColors().mainTheme,
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Howdy $userName !!"),
          RichText(
            text: TextSpan(
              children: [
                const WidgetSpan(
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 2.0, 0),
                    child: Icon(Icons.pin_drop_rounded),
                  ),
                ),
                TextSpan(
                    text: location, style: const TextStyle(color: Colors.white))
              ],
            ),
          ),
        ],
      ),
      actions: [
        Container(
          padding: const EdgeInsets.fromLTRB(0, 0, 8, 15),
          child: GestureDetector(
            child: Image.asset(
              'assets/icons/suitcase.png',
              color: Colors.white,
              width: 30,
            ),
            onTap: () {},
          ),
        )
      ],
    );
    ;
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
