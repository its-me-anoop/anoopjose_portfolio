import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:anoopjose/constants/text_constants.dart';
import 'package:anoopjose/views/hero_section.dart'; // replace this with your actual file path
import 'package:anoopjose/widgets/profile_photo_card.dart'; // replace this with your actual file path

void main() {
  testWidgets(
      'HeroSection can be created and rendered, and contains the expected texts and ProfilePhotoCard',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: HeroSection(),
      ),
    ));

    // Check if the HeroSection is in the widget tree
    expect(find.byType(HeroSection), findsOneWidget);

    // Check if the HeroSection contains the expected texts
    expect(find.text(TextConstants.title), findsOneWidget);
    expect(find.text(TextConstants.subtitle), findsOneWidget);
    expect(find.text(TextConstants.summary), findsOneWidget);

    // Check if the HeroSection contains the ProfilePhotoCard
    expect(find.byType(ProfilePhotoCard), findsOneWidget);
  });
}
