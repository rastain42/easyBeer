import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/app_sizes.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/theme.dart';

import 'package:flutter_stacked_nested_navigation/ui/widgets/app_svg.dart';

class RomBottomAppBar extends StatelessWidget {
  const RomBottomAppBar({
    super.key,
    required this.selectedIndex,
    required this.onTap,
  });
  final int selectedIndex;
  final Function? onTap;

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: RomTheme.white,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          border: Border(
            top: BorderSide(width: 1.0, color: RomTheme.grey.shade200),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: padding6),
          child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                BottomNavBarIconButton(
                  index: 0,
                  icon: Icons.home,
                  text: "Home",
                  selectedIndex: selectedIndex,
                  onTap: () => {onTap},
                ),
                BottomNavBarIconButton(
                  index: 1,
                  icon: Icons.casino,
                  text: "Random Beer",
                  selectedIndex: selectedIndex,
                  onTap: () => {onTap},
                ),
                BottomNavBarIconButton(
                  index: 2,
                  icon: Icons.question_mark,
                  text: "Tutoriel",
                  selectedIndex: selectedIndex,
                  onTap: () => {onTap},
                ),
              ]),
        ),
      ),
    );
  }
}

class BottomNavBarIconButton extends StatelessWidget {
  BottomNavBarIconButton({
    super.key,
    required this.index,
    this.icon,
    this.widgetPath,
    required this.text,
    required this.selectedIndex,
    required this.onTap,
  });

  final int index;
  final IconData? icon;
  final String? widgetPath;

  final String text;
  final Color unselectedColor = RomTheme.grey.shade600;
  final Color selectedColor = RomTheme.beer[4]!;
  final int selectedIndex;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    final bool isSelected = index == selectedIndex;

    final Color color = isSelected ? selectedColor : unselectedColor;

    return SizedBox(
      child: Material(
        type: MaterialType.transparency,
        clipBehavior: Clip.none,
        child: InkWell(
          onTap: () => onTap(index),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              if (icon != null) Icon(icon, color: color, size: 28),
              if (widgetPath != null) AppSvg(path: widgetPath!, color: color),
              Padding(
                padding: const EdgeInsets.only(top: padding4),
                child: Text(
                  text,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.clip,
                  softWrap: false,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        fontSize: 11,
                        color: color,
                      ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
