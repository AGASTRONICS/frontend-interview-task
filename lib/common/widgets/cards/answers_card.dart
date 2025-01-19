import 'package:feinterview/common/widgets/images/avatar.dart';
import 'package:feinterview/models/answer.dart';
import 'package:feinterview/utils/constants/sizes.dart';
import 'package:flutter/material.dart';

import '../../../utils/constants/colors.dart';

class StrollAnswersCard extends StatelessWidget {
  final VoidCallback? onTap;
  final StrollAnswerModel answer;
  const StrollAnswersCard({
    super.key,
    this.onTap,
    required this.answer,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () {},
      child: Container(
        decoration: BoxDecoration(
          color: StrollColors.darkShadow,
          borderRadius: BorderRadius.all(
            Radius.circular(StrollSizes.cardRadiusMd),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(StrollSizes.sm),
          child: Row(
            children: [
              StrollAvatar(
                avatarPlaceholder: answer.username,
                size: 30,
                assetPath: '',
              ),
              SizedBox(width: StrollSizes.xs),
              Expanded(
                child: Text(
                  answer.answer,
                  maxLines: 2,
                  softWrap: true,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: StrollColors.textGrey,
                    fontSize: StrollSizes.fontSizeSm,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
