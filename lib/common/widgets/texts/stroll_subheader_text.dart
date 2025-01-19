import 'package:feinterview/utils/constants/image_strings.dart';
import 'package:feinterview/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../images/png_icon.dart';

class StrollSubHeaderText extends StatelessWidget {
  const StrollSubHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        StrollPngIcon(
          assetPath: StrollImages.alarmClock,
          size: StrollSizes.md,
        ),
        SizedBox(
          width: StrollSizes.xs / 2,
        ),
        Text(
          '22h 00m',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(
          width: StrollSizes.sm,
        ),
        StrollPngIcon(
          assetPath: StrollImages.person,
          size: StrollSizes.md,
        ),
        SizedBox(
          width: StrollSizes.xs / 2,
        ),
        Text(
          '103',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
