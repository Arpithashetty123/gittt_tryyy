import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({super.key, this.onclicekd});
  final onclicekd;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onclicekd,
      icon: Icon(Icons.menu),
      color: Colors.white,
    );
  }
}
