import 'dart:io';
import 'package:budgetin/app.dart';
import 'package:flutter/material.dart';
import 'package:window_size/window_size.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowMinSize(const Size(450, 800));
    setWindowMaxSize(const Size(450, 800));
    // setWindowMaxSize(Size.infinite);
  }

  runApp(
    const App(),
  );
}
