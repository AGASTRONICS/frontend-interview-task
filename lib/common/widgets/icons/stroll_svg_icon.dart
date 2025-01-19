import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../utils/constants/sizes.dart';

Widget strollSvgIcon({
  required double size,
  required EdgeInsetsGeometry padding,
  double borderRadius = StrollSizes.md,
  required bool applyImageRadius,
  required String svg,
  BoxBorder? border,
  Color? backgroundColor,
  BoxFit? fit = BoxFit.cover,
}) {
  return Container(
    height: size,
    width: size,
    padding: padding,
    decoration: BoxDecoration(
      border: border,
      color: backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
    ),
    child: ClipRRect(
      borderRadius: applyImageRadius
          ? BorderRadius.circular(borderRadius)
          : BorderRadius.zero,
      child: SvgPicture.asset(
        svg,
        height: size,
        width: size,
      ),
    ),
  );
}
