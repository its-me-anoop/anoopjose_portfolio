import 'package:anoopjose/constants/text_constants.dart';
import 'package:anoopjose/widgets/profile_photo_card.dart';
import 'package:flutter/material.dart';

/// A custom widget that displays a hero section.
///
/// This widget is a [StatelessWidget], which describes part of the user interface which can depend on configuration
/// information in the constructor and immutable state obtained from the parent widget.
class HeroSection extends StatelessWidget {
  /// Creates a [HeroSection].
  const HeroSection({
    super.key,
  });

  /// Describes the part of the user interface represented by this widget.
  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      verticalDirection: VerticalDirection.up,
      children: [
        Column(
          children: [
            ConstrainedBox(
              constraints: BoxConstraints(
                  minWidth: 400,
                  maxWidth: (MediaQuery.of(context).size.width >= 1100)
                      ? MediaQuery.of(context).size.width - 600
                      : MediaQuery.of(context).size.width),
              child: SizedBox(
                height: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        TextConstants.title,
                        style: Theme.of(context).textTheme.headlineLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        TextConstants.subtitle,
                        style: Theme.of(context).textTheme.labelLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(32.0),
                      child: Text(
                        TextConstants.summary,
                        style: Theme.of(context).textTheme.bodyLarge,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const ProfilePhotoCard(),
      ],
    );
  }
}
