import 'package:feinterview/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/badge/name_badge.dart';
import '../../../../../common/widgets/images/avatar.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class StrollUserSubHeader extends StatelessWidget {
  const StrollUserSubHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 90,
          child: Stack(
            children: [
              Positioned(
                top: 30,
                left: 75,
                child: SizedBox(
                  width: 250,
                  child: Text(
                    StrollTexts.question1,
                    maxLines: 2,
                    style: TextStyle(
                      color: StrollColors.light,
                      fontSize: StrollSizes.md + 8,
                      fontWeight: FontWeight.w500,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: StrollDeviceUtils.getScreenWidth(context),
                child: Stack(
                  children: [
                    Positioned(
                      top: 8,
                      left: 65,
                      child: StrollNameBadge(
                        value: 'Angelina, 28',
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
            ],
          ),
        ),
      ],
    );
  }
}
