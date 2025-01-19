import 'package:flutter/material.dart';

import '../../../../../common/widgets/buttons/stroll_button.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/sizes.dart';

class StrollContentActionsSection extends StatelessWidget {
  const StrollContentActionsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: StrollSizes.lg),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          /// Left
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Pick your option.',
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: StrollColors.textGrey,
                  fontSize: StrollSizes.fontSizeXs,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              Text(
                'See who has a similar mind',
                maxLines: 1,
                softWrap: true,
                textAlign: TextAlign.start,
                style: TextStyle(
                  color: StrollColors.textGrey,
                  fontSize: StrollSizes.fontSizeXs,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),

          /// Right
          Row(
            spacing: StrollSizes.sm,
            children: [
              StrollButton(
                icon: Icons.mic,
              ),
              StrollButton(
                icon: Icons.arrow_forward,
                enableBackground: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
