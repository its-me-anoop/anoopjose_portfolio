import 'package:anoopjose/constants/skill_constants.dart';
import 'package:flutter/material.dart';

/// A custom widget that displays a skills section.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
class SkillsSection extends StatelessWidget {
  /// Creates a [SkillsSection].
  const SkillsSection({
    super.key,
  });

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Center(
        child: SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(32.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Skills",
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            Wrap(
                alignment: WrapAlignment.center,
                children: skills.map((skill) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Chip(
                      label: Text(
                        skill.skillName,
                      ),
                    ),
                  );
                }).toList()),
          ],
        ),
      ),
    ));
  }
}
