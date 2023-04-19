import 'package:flutter/material.dart';
import 'package:flutter_application_1/Features/lib/model/drawer_item.dart';
import 'package:flutter_application_1/pages/ExplorePage.dart';
import 'package:flutter_application_1/pages/FavoritesPage.dart';
import 'package:flutter_application_1/pages/MessagePage.dart';
import 'package:flutter_application_1/pages/ProfilePage.dart';
import 'package:flutter_application_1/pages/SettingsPage.dart';
import 'package:flutter_application_1/pages/logoutPage.dart';

import 'pages/HomePage.dart';
import 'drawWidget.dart';
import 'drawerItems.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      // theme: ThemeData(primarySwatch: Colors.blue),
      home: mainPage(),
    );
  }
}

class mainPage extends StatefulWidget {
  const mainPage({super.key});

  @override
  State<mainPage> createState() => _mainPageState();
}

class _mainPageState extends State<mainPage> {
  late double xoffset;
  late double yoffset;
  late double Scalefactor;
  late bool isopen;

  MainDrawerItem item = DrawerItems.home;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    closeDrawer();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
      backgroundColor: Color.fromARGB(255, 27, 26, 63),
      body: Stack(
        children: [buildDrawer(), buildPage()],
      ));

  Widget buildDrawer() {
    return SafeArea(child: DrawerWidget(
      onselectedItem: (item) {
        if (item == DrawerItems.logout) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('Logged Out')));
        } else {
          setState(() {
            this.item = item;
            closeDrawer();
          });
        }
      },
    ));
  }

  buildPage() {
    return GestureDetector(
        onTap: closeDrawer,
        child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          transform: Matrix4.translationValues(xoffset, yoffset, 0)
            ..scale(Scalefactor),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(isopen ? 20 : 0),
              child: Container(
                color:
                    isopen ? Colors.white12 : Color.fromARGB(255, 27, 26, 63),
                child: getDrawerPage(),
              )),
        ));
  }

  void openDrawer() {
    setState(() {
      xoffset = 230.0;
      yoffset = 150.0;
      Scalefactor = 0.6;
      isopen = true;
    });
  }

  void closeDrawer() {
    setState(() {
      xoffset = 0;
      yoffset = 0;
      Scalefactor = 1;
      isopen = false;
    });
  }

  getDrawerPage() {
    if (item == DrawerItems.home) {
      return HomePage(openDrawer: openDrawer);
    } else if (item == DrawerItems.Explore) {
      return ExplorePage(openDrawer: openDrawer);
    } else if (item == DrawerItems.favorites) {
      return FavoritesPage(openDrawer: openDrawer);
    } else if (item == DrawerItems.profile) {
      return ProfilePage(openDrawer: openDrawer);
    } else if (item == DrawerItems.settings) {
      return SettingsPage(openDrawer: openDrawer);
    } else if (item == DrawerItems.message) {
      return MessagePage(openDrawer: openDrawer);
    } else if (item == DrawerItems.logout) {
      return LogoutPage(openDrawer: openDrawer);
    }
  }
}
