import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:budgetin/main.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyApp());

    expect(find.byIcon(Icons.home), findsOneWidget);
  });
}
