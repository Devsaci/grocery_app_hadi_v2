import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';
import 'package:grocery_app_hadi_v1/provider/dark_theme_provider.dart';
import 'package:grocery_app_hadi_v1/screens/cart.dart';
import 'package:grocery_app_hadi_v1/screens/categories.dart';
import 'package:grocery_app_hadi_v1/screens/home_screen.dart';
import 'package:grocery_app_hadi_v1/screens/user.dart';
import 'package:provider/provider.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({super.key});

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  int _selectedIndex = 0;
  final List<Map<String, dynamic>> _pages = [
    {'page': const HomeScreen(), 'title': 'Home Screen'},
    {'page': CategoriesScreen(), 'title': 'Categories Screen'},
    {'page': const CartScreen(), 'title': 'Cart Screen'},
    {'page': const UserScreen(), 'title': 'User Screen'},
  ];

  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeState = Provider.of<DarkThemeProvider>(context);
    bool isDark = themeState.getDarkTheme;
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     _pages[_selectedIndex]['title'],
      //   ),
      // ),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: isDark ? Theme.of(context).cardColor : Colors.white,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        currentIndex: _selectedIndex,
        unselectedItemColor: isDark ? Colors.white70 : Colors.black12,
        selectedItemColor: isDark ? Colors.lightBlue.shade500 : Colors.black87,
        onTap: _selectedPage,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: _selectedIndex == 0
                ? const Icon(IconlyBold.home)
                : const Icon(IconlyLight.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 1
                ? const Icon(IconlyBold.category)
                : const Icon(IconlyLight.category),
            label: "Categories",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 2
                ? const Icon(IconlyBold.buy)
                : const Icon(IconlyLight.buy),
            label: "Cart",
          ),
          BottomNavigationBarItem(
            icon: _selectedIndex == 3
                ? const Icon(IconlyBold.user2)
                : const Icon(IconlyLight.user2),
            label: "User",
          ),
        ],
      ),
    );
  }
}
