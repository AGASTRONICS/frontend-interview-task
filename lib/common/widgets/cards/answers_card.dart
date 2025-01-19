import 'package:feinterview/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class StrollAnswersCard extends StatelessWidget {
  const StrollAnswersCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: StrollColors.darkShadow,
        borderRadius: BorderRadius.all(
          Radius.circular(StrollSizes.cardRadiusMd),
        ),
      ),
      child: Row(
        children: [],
      ),
    );
    ;
  }
}
