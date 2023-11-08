import 'dart:io';

import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

import 'config/routes.dart';
import 'config/themes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(450, 800));
    setWindowMaxSize(const Size(450, 800));
    // setWindowMaxSize(Size.infinite);
  }

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme(),
      darkTheme: darkTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      onGenerateRoute: RouteGenerator().generateRoute,
    );
  }
}
