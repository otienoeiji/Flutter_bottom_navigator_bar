import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class AppHome extends StatefulWidget {
  const AppHome({Key? key}) : super(key: key);

  @override
  State<AppHome> createState() => _AppHomeState();
}

class _AppHomeState extends State<AppHome> {
  int pageIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: IndexedStack(
          children: const <Widget>[
            Scaffold(
              backgroundColor: Colors.redAccent,
            ),
            Scaffold(
              backgroundColor: Colors.yellowAccent,
            ),
            Scaffold(
              backgroundColor: Colors.blueAccent,
            ),
            Scaffold(
              backgroundColor: Colors.greenAccent,
            ),
            Scaffold(
              backgroundColor: Colors.indigoAccent,
            ),
          ],
          index: pageIndex,
        ),
        bottomNavigationBar: BottomNavigationBar(
          elevation: 1,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.black38,
          currentIndex: pageIndex,
          onTap: (int index) {
            setState(() {
              pageIndex = index;
            });
          },
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.home,
              ),
              label: "Near",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Ionicons.at,
              ),
              label: "Near",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.add_circle,
              ),
              label: "Emergency",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.message,
              ),
              label: "Notifications",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Iconsax.profile_circle,
              ),
              label: "Account",
            ),
          ],
        ),
      ),
    );
  }
}
