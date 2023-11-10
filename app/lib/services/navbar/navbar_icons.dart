import 'package:flutter/material.dart';

List<BottomNavigationBarItem> bottomNavItems = const <BottomNavigationBarItem>[
  BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.account_balance_wallet),
    label: 'Wallet',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.add),
    label: 'Add',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.receipt_long),
    label: 'Transaction',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.person),
    label: 'Account',
  ),
];
