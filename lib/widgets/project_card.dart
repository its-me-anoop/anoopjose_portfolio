import 'package:anoopjose/constants/projects.dart';
import 'package:anoopjose/interface/url_launcher.dart';
import 'package:flutter/material.dart';

/// A custom widget that displays a project card.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
class ProjectCard extends StatelessWidget {
  /// Creates a [ProjectCard].
  ///
  /// Requires the [index] of the project in the projects list.
  const ProjectCard(
      {super.key, required this.index, required this.urlLauncher});

  /// The index of the project in the projects list.
  final int index;
  final UrlLauncher urlLauncher;

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => urlLauncher.open(projects[index].url, 'tab'),
      child: Padding(
        padding: EdgeInsets.only(left: (index == 0) ? 32.0 : 0.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Card(
            child: SizedBox(
                width: 300,
                child: Column(children: [
                  Expanded(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      child: SizedBox(
                        width: double.infinity,
                        child: Image.network(
                          projects[index].imgUlr,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Text(
                            projects[index].projectTitle,
                            style: Theme.of(context).textTheme.titleLarge,
                          ),
                          const SizedBox(
                            height: 16,
                          ),
                          Text(projects[index].projectSummary)
                        ],
                      ),
                    ),
                  )
                ])),
          ),
        ),
      ),
    );
  }
}
