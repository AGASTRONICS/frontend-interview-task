import 'package:feinterview/common/widgets/images/round_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/sizes.dart';

class StrollAvatar extends StatelessWidget {
  final String assetPath;
  final double size;
  final Color? borderColor, backgroundColor;
  final String? avatarPlaceholder;
  final VoidCallback? callback;

  const StrollAvatar({
    super.key,
    required this.assetPath,
    this.size = 24,
    this.avatarPlaceholder,
    this.backgroundColor,
    this.borderColor = StrollColors.darkShadow,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return avatarPlaceholder == null
        ? StrollRoundedImage(
            onPressed: callback ?? () {},
            imageUrl: assetPath,
            height: size,
            width: size,
            padding: EdgeInsets.all(StrollSizes.xs),
            isNetworkImage: false,
            borderRadius: 100.0,
            applyImageRadius: true,
            border: Border.all(color: StrollColors.darkShadow),
          )
        : Container(
            height: size,
            width: size,
            decoration: BoxDecoration(
              color: backgroundColor,
              borderRadius: BorderRadius.all(Radius.circular(100.0)),
              border: Border.all(color: StrollColors.textGrey),
            ),
            child: Center(
              child: Text(
                avatarPlaceholder!.toString()[0].toUpperCase(),
                style: TextStyle(
                    color: StrollColors.light, fontSize: StrollSizes.md),
              ),
            ),
          );
  }
}
