import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:session1/theme/colors.dart';
import 'package:session1/views/favorites_view.dart';
import 'package:session1/views/home_view.dart';
import 'package:session1/views/profie_view.dart';
import 'package:session1/views/store_view.dart';

class NavBar extends StatefulWidget {
  const NavBar({super.key});

  @override
  State<NavBar> createState() => _NavBarState();
}

class _NavBarState extends State<NavBar> {
  int _selectedIndex = 0;

  final List<Widget> views = [
    HomeView(),
    StoreView(),
    FavoritesView(),
    ProfieView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: views[_selectedIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.black,
          boxShadow: [
            BoxShadow(color: Colors.black12, blurRadius: 10, spreadRadius: 2),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12),
          child: GNav(
            selectedIndex: _selectedIndex,
            onTabChange: (index) {
              setState(() {
                _selectedIndex = index;
              });
            },
            tabBorderRadius: 15,
            duration: Duration(milliseconds: 400),
            gap: 8,
            color: Colors.grey,
            activeColor: Colors.white,
            iconSize: 24,
            tabBackgroundColor: ColorsManger.kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 6),
            tabs: const [
              GButton(icon: Icons.home, text: 'Home'),
              GButton(icon: Icons.store, text: 'Store'),
              GButton(icon: Icons.favorite, text: 'Favorites'),
              GButton(icon: Icons.person, text: 'Profile'),
            ],
          ),
        ),
      ),
    );
  }
}
