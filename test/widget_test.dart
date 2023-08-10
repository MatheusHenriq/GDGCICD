// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:cdgphbapp/modules/homepage.dart';
import 'package:cdgphbapp/modules/widgets/launch_url_button.dart';
import 'package:cdgphbapp/utils/social_media_enum.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Test Homepage', (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Homepage(
          title: "GDG Parnaíba",
        ),
      ),
    );

    expect(find.text('GDG Parnaíba'), findsOneWidget);
    expect(find.byType(LaunchUrlButton), findsWidgets);
  });
}
