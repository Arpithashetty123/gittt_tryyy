import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../DrawerMenu.dart';

class FavoritesPage extends StatelessWidget {
  const FavoritesPage({
    super.key,
    this.openDrawer,
  });

  final openDrawer;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      appBar: AppBar(
          leading: DrawerMenu(onclicekd: openDrawer),
          backgroundColor: Colors.transparent,
          title: Center(child: Text('Favorites Page '))),
    );
  }
}
