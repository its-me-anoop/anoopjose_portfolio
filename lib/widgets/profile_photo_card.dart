import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

/// A custom widget that displays a profile photo card.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
class ProfilePhotoCard extends StatelessWidget {
  /// Creates a [ProfilePhotoCard].
  const ProfilePhotoCard({
    super.key,
  });

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: (MediaQuery.of(context).size.width >= 1100)
          ? 400
          : MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
              alignment: Alignment(0, -0.5),
              fit: BoxFit.cover,
              image: kIsWeb
                  ? AssetImage("anoop.jpg")
                  : AssetImage("assets/anoop.jpg"))),
    );
  }
}
