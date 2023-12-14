import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/app_sizes.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/app_text_styles.dart';

import 'package:flutter_stacked_nested_navigation/ui/widgets/animated/animated_hand.dart';

class GreetingsWidget extends StatelessWidget {
  const GreetingsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: <Widget>[
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Text(
              "Hello",
              style: homeAppBarGreetingStyle,
            ),
            Text(
              "Romain",
              style: homeAppBarUserNameStyle,
            ),
          ],
        ),
        gapW4,
        const AnimatedHand(),
      ],
    );
  }
}
