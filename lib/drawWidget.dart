import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_application_1/drawerItems.dart';

import 'Features/lib/model/drawer_item.dart';

class DrawerWidget extends StatelessWidget {
  final ValueChanged<MainDrawerItem> onselectedItem;
  const DrawerWidget({super.key, required this.onselectedItem});
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildDrawerItem(context),
        ],
      ),
    );
  }

  Widget buildDrawerItem(BuildContext context) => Column(
      children: DrawerItems.all
          .map((items) => Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Icon(
                    items.icon,
                    color: Colors.white,
                  ),
                  title: Text(
                    items.title,
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                  onTap: () => onselectedItem(items),
                ),
              ))
          .toList());
}
