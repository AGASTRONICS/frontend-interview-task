import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class StrollNameBadge extends StatelessWidget {
  final String value;

  const StrollNameBadge({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        color: StrollColors.dark,
      ),
      child: Text(
        value,
        style: TextStyle(
          color: StrollColors.light,
          fontWeight: FontWeight.w500,
          fontSize: StrollSizes.fontSizeXs,
        ),
      ),
    );
  }
}
