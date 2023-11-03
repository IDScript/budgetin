import '../ui/home_page.dart';
import '../ui/main_page.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.grid_3x3),
    label: 'Category',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.search_outlined),
    label: 'Search',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    label: 'Favourite',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    label: 'Cart',
  ),
];

List<Widget> bottomNavScreen = <Widget>[
  const Text('Index 2: Search'),
  MainPage(),
  MyHomePage(),
  const Text('Index 3: Favourite'),
  Scaffold(
    appBar: AppBar(
      title: const Text('Error'),
    ),
    body: const Center(
      child: Text('ERROR'),
    ),
  )
];
