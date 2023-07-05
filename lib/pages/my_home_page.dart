import 'package:anoopjose/views/hero_section.dart';
import 'package:anoopjose/views/projects_section.dart';
import 'package:anoopjose/views/skills_section.dart';
import 'package:flutter/material.dart';

/// The main page widget for the application.
///
/// This widget is a [StatefulWidget], which means it can change over time and rebuild its user interface as necessary.
/// The user interface for this page is defined in its associated [State] object, [_MyHomePageState].
class MyHomePage extends StatefulWidget {
  /// Creates a [MyHomePage].
  ///
  /// Does not require any parameters.
  const MyHomePage({super.key});

  /// Creates the mutable state for this widget at a given location in the tree.
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

/// The logic and internal state for a [MyHomePage] widget.
///
/// When this object’s state is modified, the state object calls [build], which causes the framework to rebuild the user interface.
class _MyHomePageState extends State<MyHomePage> {
  /// Describes the part of the user interface represented by this widget.
  ///
  /// The build method returns a [Scaffold] widget that contains a [ListView].
  /// The [ListView] includes three main sections: a [HeroSection], a [SkillsSection], and a [ProjectsSection].
  /// It also includes a [SizedBox] for extra spacing.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: const [
          HeroSection(),
          SkillsSection(),
          ProjectsSection(),
          SizedBox(
            height: 500,
          )
        ],
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
