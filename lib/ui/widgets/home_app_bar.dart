import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/theme.dart';
import 'package:flutter_stacked_nested_navigation/ui/widgets/greetings_widget.dart';
import 'package:smooth_corner/smooth_corner.dart';

const double _appBarHeight = 64;

class HomeAppBar extends AppBar {
  HomeAppBar({super.key});

  @override
  Color? get backgroundColor => RomTheme.beer[4];

  @override
  Size get preferredSize => const Size.fromHeight(_appBarHeight);

  @override
  double? get toolbarHeight => _appBarHeight;

  @override
  ShapeBorder get shape {
    return SmoothRectangleBorder(
      smoothness: RomTheme.smoothness,
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(25),
        bottomRight: Radius.circular(25),
      ),
    );
  }

  @override
  Widget get title {
    return Row(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: GestureDetector(
            // onTap: () =>  NavigateEvent(Routes.account),*
            onTap: () => {},
            // child: const UserAvatarWidget.medium(),
            child: const Icon(Icons.person),
          ),
        ),
        const Expanded(child: GreetingsWidget()),
      ],
    );
  }
}
