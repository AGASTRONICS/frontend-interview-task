import 'package:feinterview/utils/constants/colors.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class StrollButton extends StatelessWidget {
  final bool enableBackground;
  final IconData icon;

  const StrollButton({
    super.key,
    required this.icon,
    this.enableBackground = false,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      radius: 100.0,
      child: Container(
        padding: EdgeInsets.all(StrollSizes.sm),
        decoration: BoxDecoration(
          color: enableBackground ? StrollColors.primary : Colors.transparent,
          borderRadius: BorderRadius.all(
            Radius.circular(StrollSizes.rounded),
          ),
          border: Border.all(
            color: StrollColors.primary,
          ),
        ),
        child: Icon(
          icon,
          color: enableBackground ? StrollColors.dark : StrollColors.primary,
        ),
      ),
    );
  }
}
