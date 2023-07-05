import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';
import 'package:anoopjose/constants/skill_constants.dart';
import 'package:anoopjose/views/skills_section.dart'; // replace this with your actual file path

void main() {
  testWidgets(
      'SkillsSection can be created and rendered, and contains the expected chips',
      (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MaterialApp(
      home: Scaffold(
        body: SkillsSection(),
      ),
    ));

    // Check if the SkillsSection is in the widget tree
    expect(find.byType(SkillsSection), findsOneWidget);

    // Check if the SkillsSection contains the expected chips
    for (var skill in skills) {
      expect(find.widgetWithText(Chip, skill.skillName), findsOneWidget);
    }
  });
}
