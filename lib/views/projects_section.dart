// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:anoopjose/constants/projects.dart';
import 'package:anoopjose/interface/html_url_launcher.dart';
import 'package:anoopjose/widgets/project_card.dart';
import 'package:flutter/material.dart';

/// A custom widget that displays a section with project cards.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
class ProjectsSection extends StatelessWidget {
  /// Creates a [ProjectsSection].
  ///
  /// Does not require any parameters.
  const ProjectsSection({
    super.key,
  });

  /// Describes the part of the user interface represented by this widget.
  ///
  /// The build method returns a [Center] widget which includes a [Column] widget.
  /// The [Column] includes a [Padding] widget with a [Text] child that displays "Projects",
  /// followed by a [SizedBox] widget that contains a horizontally scrolling [ListView].
  /// The [ListView] uses a builder to construct a list of [ProjectCard] widgets, one for each project.
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(32.0),
          child: Text(
            "Projects",
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        SizedBox(
          height: 300,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: projects.length,
              itemBuilder: (_, index) {
                return ProjectCard(
                  index: index,
                  urlLauncher: HtmlUrlLauncher(),
                );
              }),
        ),
      ],
    ));
  }
}
