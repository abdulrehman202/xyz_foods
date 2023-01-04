import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:xyz_foods/presentation/menu/menu.dart';
import 'package:xyz_foods/presentation/resources/color_manager.dart';
import 'package:xyz_foods/presentation/resources/values_manager.dart';

class NavBarScreen extends StatefulWidget {
  const NavBarScreen({super.key});

  @override
  State<NavBarScreen> createState() => _NavBarScreenState();
}

class _NavBarScreenState extends State<NavBarScreen> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    Menu(),
    Text(
      'Likes',
    ),
    Text(
      'Search',
    ),
    Text(
      'Profile',
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _widgetOptions[_selectedIndex],
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(AppPadding.p12),
        decoration: const BoxDecoration(
          color: Colors.white,
        ),
        child: Card(
          child: GNav(
            rippleColor:
                ColorManager.primary, // tab button ripple color when pressed
            hoverColor: ColorManager.primaryOpacity70, // tab button hover color
            haptic: true, // haptic feedback
            tabBorderRadius: 5,
            curve: Curves.easeOutExpo, // tab animation curves
            duration:
                const Duration(milliseconds: 300), // tab animation duration
            gap: 8, // the tab button gap between icon and text
            color:
                const Color.fromARGB(255, 66, 66, 66), // unselected icon color
            activeColor: ColorManager.primary, // selected icon and text color
            iconSize: 24, // tab button icon size
            tabBackgroundColor:
                ColorManager.primaryOpacity70, // selected tab background color
            padding: const EdgeInsets.symmetric(
                horizontal: 20, vertical: 5), // navigation bar padding
            tabs: const [
              GButton(
                icon: Icons.home,
                text: 'Home',
              ),
              GButton(
                icon: Icons.wallet,
                text: 'Wallet',
              ),
              GButton(
                icon: Icons.search,
                text: 'Search',
              ),
              GButton(
                icon: Icons.person,
                text: 'Profile',
              )
            ],
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      ),
    );
  }
}
