import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:anoopjose/widgets/custom_card.dart'; // replace this with your actual file path

void main() {
  testWidgets('CustomCard contains the passed child widget',
      (WidgetTester tester) async {
    // Define a widget to pass as the child
    const childWidget = Icon(Icons.info);

    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: CustomCard(color: Colors.blue, child: childWidget),
      ),
    ));

    // Check if the CustomCard contains the child widget
    expect(find.byWidget(childWidget), findsOneWidget);
  });
}
