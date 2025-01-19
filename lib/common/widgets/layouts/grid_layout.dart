import 'package:flutter/material.dart';

import '../../../utils/constants/sizes.dart';

class PGridLayout extends StatelessWidget {
  const PGridLayout(
      {super.key,
      required this.itemCount,
      this.mainAxisExtent,
      required this.itemBuilder,
      this.crossAxisCount = 2,
      this.spacing = StrollSizes.gridViewSpacing});

  final int itemCount, crossAxisCount;
  final double? mainAxisExtent;
  final double spacing;
  final Widget? Function(BuildContext, int) itemBuilder;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: itemCount,
      shrinkWrap: true,
      padding: EdgeInsets.zero,
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        mainAxisSpacing: spacing,
        crossAxisSpacing: spacing,
        mainAxisExtent: mainAxisExtent,
      ),
      itemBuilder: itemBuilder,
    );
  }
}
