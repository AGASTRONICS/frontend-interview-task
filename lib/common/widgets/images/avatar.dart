import 'package:feinterview/common/widgets/images/round_image.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';
import '../../../utils/constants/image_strings.dart';
import '../../../utils/constants/sizes.dart';

class StrollAvatar extends StatelessWidget {
  final String assetPath;
  final double size;
  final Color? borderColor;
  final VoidCallback? callback;

  const StrollAvatar({
    super.key,
    required this.assetPath,
    this.size = 24,
    this.borderColor = StrollColors.darkShadow,
    this.callback,
  });

  @override
  Widget build(BuildContext context) {
    return StrollRoundedImage(
      onPressed: callback ?? () {},
      imageUrl: StrollImages.ladyAvatar,
      height: size,
      width: size,
      padding: EdgeInsets.all(StrollSizes.xs),
      isNetworkImage: false,
      borderRadius: 100.0,
      applyImageRadius: true,
      border: Border.all(color: StrollColors.darkShadow),
    );
  }
}
