import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_apps/page/home_page.dart';

void main() {
  testWidgets('ContactApp has the correct title', (WidgetTester tester) async {
    // Build the ContactApp widget
    await tester.pumpWidget(const MaterialApp(
      home: ContactApp(),
    ));

    // Verify that the title text is displayed
    expect(find.text('Contacts'), findsOneWidget);
  });

  testWidgets('Renders all widgets', (tester) async {
    // Build ContactApp widget
    await tester.pumpWidget(MaterialApp(home: ContactApp()));

    // Verify that all widgets are rendered
    expect(find.text('Contacts'), findsOneWidget);
    expect(find.widgetWithText(ElevatedButton, 'Submit'), findsOneWidget);
    expect(find.byType(ListView), findsOneWidget);
    expect(find.byType(Form), findsOneWidget);
  });

  testWidgets('ContactApp adds a new contact', (WidgetTester tester) async {
    // Build the ContactApp widget
    await tester.pumpWidget(const MaterialApp(
      home: ContactApp(),
    ));

    // Enter name and number and tap the submit button
    await tester.enterText(find.byType(TextFormField).first, 'John Doe');
    await tester.enterText(find.byType(TextFormField).last, '0123456789');
    await tester.tap(find.text('Submit'));
    await tester.pump();

    // Verify that the new contact is displayed in the list
    expect(find.text('John Doe'), findsOneWidget);
    expect(find.text('0123456789'), findsOneWidget);
  });

  testWidgets('Updating contact shows updated details in list',
      (WidgetTester tester) async {
    // Build ContactApp widget
    await tester.pumpWidget(MaterialApp(home: ContactApp()));

    // Tap edit button for first contact
    await tester.tap(find.byIcon(Icons.edit_outlined).first);
    await tester.pump();

    // Enter new name and number
    await tester.enterText(find.byType(TextFormField).first, 'Updated Name');
    await tester.enterText(find.byType(TextFormField).last, '9876543210');

    // Submit form
    await tester.tap(find.widgetWithText(ElevatedButton, 'Update'));
    await tester.pump();

    // Verify that contact details are updated in list
    expect(find.text('Updated Name'), findsOneWidget);
    expect(find.text('9876543210'), findsOneWidget);
  });
}
