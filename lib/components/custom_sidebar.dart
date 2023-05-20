import 'package:flutter/material.dart';
import 'package:netclan_demo/constants/custom_colours.dart';

class CustomSidebar extends StatelessWidget {
  const CustomSidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: const Text("userName"),
            accountEmail: const Text("someemail@gmail.com"),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset(
                  "assets/images/user.png",
                  width: 90,
                  height: 90,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/images/sidebarBackground.jpg',
                ),
                fit: BoxFit.cover,
              ),
            ),
          ),
          // Edit my profile.
          CustomListTile(
            title: "Edit my Profile",
            iconName: Icons.person,
            selected: false,
          ),
          // My network.
          CustomListTile(
            title: "My Network",
            iconName: Icons.people_alt_rounded,
            selected: true,
          ),
          // switch to individual.
          CustomListTile(
            title: "Switch to Individual",
            iconName: Icons.person,
            selected: false,
          ),
          // switch to merchant.
          CustomListTile(
            title: "Switch to Merchant",
            iconName: Icons.storefront,
            selected: false,
          ),
          // buy-sell-rent.
          CustomListTile(
            title: "Buy-Sell-Rent",
            iconName: Icons.shopping_bag,
            selected: false,
          ),
          // business cards.
          CustomListTile(
            title: "Business Cards",
            iconName: Icons.credit_card,
            selected: false,
          ),
          // hastags
          CustomListTile(
            title: "Hashtags",
            iconName: Icons.tag,
            selected: false,
          ),
          // notes
          CustomListTile(
            title: "Notes",
            iconName: Icons.note_alt,
            selected: false,
          ),
          // live locations
          CustomListTile(
            title: "Live Locations",
            iconName: Icons.pin_drop,
            selected: false,
          ),
        ],
      ),
    );
  }
}

class CustomListTile extends StatelessWidget {
  String title;
  IconData? iconName;
  bool selected;
  CustomListTile({
    required this.title,
    required this.iconName,
    required this.selected,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    if (selected == true) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
            color: CustomColors().subtitleColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(5),
          ),
          child: ListTile(
            selectedTileColor: CustomColors().subtitleColor,
            leading: Icon(
              iconName,
              color: CustomColors().mainTheme,
            ),
            title: Text(
              title,
              style: TextStyle(color: CustomColors().mainTheme),
            ),
          ),
        ),
      );
    } else {
      return ListTile(
        leading: Icon(
          iconName,
          color: CustomColors().mainTheme,
        ),
        title: Text(
          title,
          style: TextStyle(color: CustomColors().mainTheme),
        ),
      );
    }
  }
}
