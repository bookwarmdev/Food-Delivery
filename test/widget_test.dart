// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_delivery/views/onbording/onbording.dart';

void main() {
  testWidgets('check next screen', (WidgetTester tester) async {
    // find all widget needed
    final nextOnbording1 = find.byKey(const ValueKey('onbording1'));
     

    // execute the actual test
    await tester.pumpWidget(
      const MaterialApp(
        home: Onbording2Screen(),
      ),
    );
    await tester.tap(nextOnbording1);
    await tester.pump();

    // check the output
    // expect(
    //   find.byType(),
    //   findsOneWidget,
    // );
  });
}
