import 'package:flutter/material.dart';

import '../../../../../common/widgets/cards/answers_card.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../utils/constants/sizes.dart';

class StrollAnswersSection extends StatelessWidget {
  const StrollAnswersSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(StrollSizes.md),
      child: PGridLayout(
        itemCount: 4,
        mainAxisExtent: 70,
        spacing: StrollSizes.md - 4,
        itemBuilder: (_, index) {
          return StrollAnswersCard();
        },
      ),
    );
  }
}
