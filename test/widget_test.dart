// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:food_delivery/views/auth/auth.dart';
import 'package:food_delivery/views/onbording/onbording.dart';

void main() {
  testWidgets('check next screen', (WidgetTester tester) async {
    // test for onbording screen
    // find your widget needed
    final nextOnbording1 = find.byKey(const ValueKey('onbording2'));

    // execute the actual test
    await tester.pumpWidget(
      const MaterialApp(
        home: Onbording2Screen(),
      ),
    );
    await tester.tap(nextOnbording1);
    await tester.pump();

    // check the output
    expect(
      find.text("Find your comfort food here"),
      findsNothing,
    );
  });

  testWidgets("login screen widget test", (WidgetTester tester) async {
    // var textField = find.byType(TextField);
    var _email = find.byKey(const ValueKey("email"));
    var _password = find.byKey(const ValueKey("password"));
    var loginButton = find.text("Login");

    await tester.pumpWidget(
      const MaterialApp(
        home: LogInScreen(),
      ),
    );

    // check user input
    await tester.enterText(_email, "bookwarmdev@gmail.com");
    await tester.enterText(_password, "123456789");

    // expect(loginButton, findsWidgets);
    // expect(find.text("bookwarmdev@gmail.com"), findsOneWidget);
    // expect(find.text("123456789"), findsOneWidget);

    await tester.tap(loginButton);
    await tester.pump();

    expect(find.text("Did not have an account?"), findsOneWidget);
  });
}
