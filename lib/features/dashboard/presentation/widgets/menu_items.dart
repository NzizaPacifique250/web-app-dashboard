import 'package:flutter/material.dart';

class MenuItems extends StatefulWidget {
  const MenuItems({super.key});

  @override
  State<MenuItems> createState() => _MenuItemsState();
}

class _MenuItemsState extends State<MenuItems> {
  final List<Map<String, dynamic>> menuItems = [
    {'title': 'Home', 'icon': Icons.home},
    {'title': 'Statistics', 'icon': Icons.bar_chart},
    {'title': 'History', 'icon': Icons.history},
    {'title': 'Transactions', 'icon': Icons.transcribe_sharp},
    {'title': 'About Us', 'icon': Icons.info},
  ];
  final List<Map<String, dynamic>> moreMenuItems = [
    {'title': 'Settings', 'icon': Icons.settings},
    {'title': 'Support', 'icon': Icons.support_agent},
    {'title': 'Log out', 'icon': Icons.logout},
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: menuItems.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Material(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {},
                    hoverColor: Colors.grey[200],
                    selectedTileColor: Colors.blue,
                    iconColor: Colors.white,
                    leading: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        menuItems[i]['icon'],
                        color: Colors.grey,
                      ),
                    ),
                    title: Text(menuItems[i]['title']),
                  ),
                ),
              );
            },
          ),
        ),
        SizedBox(height: 16),
        Divider(
          color: Colors.grey.withOpacity(0.2),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: moreMenuItems.length,
            itemBuilder: (context, i) {
              return Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 8,
                ),
                child: Material(
                  child: ListTile(
                    contentPadding: const EdgeInsets.symmetric(horizontal: 10),
                    onTap: () {},
                    hoverColor: Colors.grey[200],
                    selectedTileColor: Colors.blue,
                    iconColor: Colors.white,
                    leading: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20),
                      child: Icon(
                        moreMenuItems[i]['icon'],
                        color: Colors.grey,
                      ),
                    ),
                    title: Text(moreMenuItems[i]['title']),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}