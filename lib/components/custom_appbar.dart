import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
