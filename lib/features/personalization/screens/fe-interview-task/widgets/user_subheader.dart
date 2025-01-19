import 'package:feinterview/utils/constants/texts.dart';
import 'package:feinterview/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/images/avatar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';

class StrollUserSubHeader extends StatelessWidget {
  const StrollUserSubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: StrollDeviceUtils.getScreenWidth(context),
          child: Stack(
            children: [
              const Positioned(
                top: 8,
                left: 65,
                child: Text(
                  'Angelina, 28',
                  style: TextStyle(
                    color: StrollColors.light,
                    fontWeight: FontWeight.w500,
                    fontSize: StrollSizes.fontSizeSm,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const StrollAvatar(
                    assetPath: StrollImages.ladyAvatar,
                    size: 65,
                  ),
                ],
              ),
            ],
          ),
        ),
        Text(StrollTexts.question2)
      ],
    );
  }
}
