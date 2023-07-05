import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:anoopjose/widgets/profile_photo_card.dart'; // replace this with your actual file path

void main() {
  testWidgets('ProfilePhotoCard can be created and rendered',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: ProfilePhotoCard(),
      ),
    ));

    // Check if the ProfilePhotoCard is in the widget tree
    expect(find.byType(ProfilePhotoCard), findsOneWidget);
  });
}
