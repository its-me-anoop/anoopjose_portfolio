// ignore_for_file: avoid_web_libraries_in_flutter

import 'package:anoopjose/pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

/// The main function of the application.
///
/// Initializes [Motion] for animations and then runs [MyApp].
Future<void> main() async {
  await Motion.instance.initialize();
  runApp(const MyApp());
}

/// The root widget for the application.
///
/// This widget is a [StatelessWidget], meaning it describes part of the user interface which can depend on configuration information
/// in the constructor and immutable state obtained from the parent widget. It can't be changed over time.
class MyApp extends StatelessWidget {
  /// Creates a [MyApp].
  ///
  /// Does not require any parameters.
  const MyApp({super.key});

  /// Describes the part of the user interface represented by this widget.
  ///
  /// The build method returns a [MaterialApp] widget that includes a [ThemeData] for the application's visual styling and
  /// a [MyHomePage] as the home page for the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
