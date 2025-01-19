import 'package:feinterview/common/widgets/texts/stroll_subheader_text.dart';
import 'package:feinterview/utils/constants/colors.dart';
import 'package:feinterview/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

class StrollHeaderText extends StatelessWidget {
  const StrollHeaderText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(height: StrollSizes.md),
        // Top Section
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Stroll Bonfire',
                    style: TextStyle(
                      fontSize: StrollSizes.fontSizeXl,
                      color: StrollColors.primary,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(width: StrollSizes.xs / 2),
                  InkWell(
                    onTap: () {},
                    child: Icon(
                      Icons.keyboard_arrow_down,
                      color: StrollColors.primary,
                    ),
                  ),
                ],
              ),
              StrollSubHeaderText(),
            ],
          ),
        ),
      ],
    );
  }
}
