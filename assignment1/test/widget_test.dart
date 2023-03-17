import 'package:assignment1/AllPages/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:assignment1/main.dart';

void main() {
  testWidgets('MyWidget has a title and message', (WidgetTester tester) async {
    await tester.pumpWidget(MyLogin());
    Finder emailField = find.byKey(new Key('email'));
    await tester.enterText(emailField, "text");

    Finder loginButton = find.byKey(new Key('login_btn'));
    await tester.tap(loginButton);
    await tester.pump();
  });
}
