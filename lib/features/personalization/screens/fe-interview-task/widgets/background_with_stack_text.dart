import 'package:flutter/material.dart';

import '../../../../../common/widgets/texts/stroll_header_text.dart';
import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/device/device_utility.dart';

class StrollHeaderSection extends StatelessWidget {
  const StrollHeaderSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // Background Image
        Stack(
          children: [
            Container(
              height: StrollDeviceUtils.getScreenHeight(context) * 0.6,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(StrollImages.sunSetBackground2),
                  fit: BoxFit.fill,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Top shadow overlay
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: 180,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            StrollColors.darkShadow,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Bottom shadow overlay
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 280,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            StrollColors.dark,
                            Colors.transparent,
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),

        /// Content Overlay
        SafeArea(
          child: StrollHeaderText(),
        ),
      ],
    );
  }
}
