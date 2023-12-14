import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// A class to display SVG images.
class AppSvg extends StatelessWidget {
  const AppSvg({
    super.key,
    required this.path,
    this.color,
    this.fit,
    this.alignment,
    this.width,
    this.height,
  });

  final String path;
  final Color? color;
  final BoxFit? fit;
  final Alignment? alignment;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      colorFilter:
          color != null ? ColorFilter.mode(color!, BlendMode.srcATop) : null,
      fit: fit ?? BoxFit.contain,
      alignment: alignment ?? Alignment.center,
      placeholderBuilder: (_) =>
          const Center(child: CircularProgressIndicator()),
      width: width,
      height: height,
    );
  }
}
