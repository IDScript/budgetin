import '../ui/lima.dart';
import '../ui/home_page.dart';
import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.wallet),
    label: 'Category',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.add),
    label: 'Add',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.favorite_outline),
    label: 'Favourite',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Cart',
  ),
];

List<Widget> bottomNavScreen = <Widget>[
  const Text('Index 1: Home'),
  const Text('Index 2: Search'),
  MyHomePage(),
  const Text('Index 3: Favourite'),
  const Lima(),
];
