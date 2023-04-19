import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/lib/model/drawer_item.dart';

import 'Features/lib/model/drawer_item.dart';

class DrawerItems {
  static MainDrawerItem home = MainDrawerItem(title: 'Home', icon: Icons.home);
  static MainDrawerItem Explore =
      MainDrawerItem(title: 'Explore', icon: Icons.explore);
  static MainDrawerItem favorites =
      MainDrawerItem(title: 'Favorites', icon: Icons.favorite);
  static MainDrawerItem message =
      MainDrawerItem(title: 'Message', icon: Icons.email);
  static MainDrawerItem profile =
      MainDrawerItem(title: 'Profile', icon: Icons.man_2_sharp);
  static MainDrawerItem settings =
      MainDrawerItem(title: 'Settings', icon: Icons.settings);
  static MainDrawerItem logout =
      MainDrawerItem(title: 'Logout', icon: Icons.logout);

  static final List<MainDrawerItem> all = [
    home,
    Explore,
    favorites,
    message,
    profile,
    settings,
    logout
  ];
}
