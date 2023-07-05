import 'package:flutter/material.dart';
import 'package:motion/motion.dart';

/// A custom widget that provides an advanced UI card effect.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
///
/// It utilizes a package named `motion` to provide advanced UI effects.
class CustomCard extends StatelessWidget {
  /// Creates a [CustomCard].
  ///
  /// The [color] and [child] arguments must not be null.
  const CustomCard({super.key, required this.color, required this.child});

  /// The color of the container that houses the child widget.
  final Color? color;

  /// The child widget that this card will display.
  final Widget child;

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Motion(
        key: const Key("hello"),
        borderRadius: BorderRadius.circular(10),
        glare: const GlareConfiguration(color: Colors.white, maxOpacity: 0.5),
        shadow: const ShadowConfiguration(
            opacity: 0.2, color: Colors.grey, blurRadius: 5),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            decoration: BoxDecoration(color: color),
            child: child,
          ),
        ),
      ),
    );
  }
}
