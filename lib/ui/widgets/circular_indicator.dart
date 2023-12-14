import 'package:flutter/material.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/app_text_styles.dart';
import 'package:flutter_stacked_nested_navigation/ui/theme/theme.dart';

class CircularIndicator extends StatelessWidget {
  const CircularIndicator({
    super.key,
    required this.pourcent,
    required this.text,
    required this.value,
  });

  final double pourcent;
  final String text;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: Stack(
            children: [
              SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: 1,
                  color: RomTheme.beer[1],
                ),
              ),
              SizedBox(
                height: 50,
                width: 50,
                child: CircularProgressIndicator(
                  strokeWidth: 10,
                  value: pourcent,
                  color: RomTheme.beer[5],
                ),
              ),
              Center(
                child: Text(value),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: Text(
            text,
            style: AppTextStyles.label,
          ),
        )
      ],
    );
  }
}
