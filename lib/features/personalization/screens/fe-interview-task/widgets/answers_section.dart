import 'package:feinterview/models/answer.dart';
import 'package:flutter/material.dart';

import '../../../../../common/widgets/cards/answers_card.dart';
import '../../../../../common/widgets/layouts/grid_layout.dart';
import '../../../../../utils/constants/sizes.dart';

class StrollAnswersSection extends StatelessWidget {
  const StrollAnswersSection({super.key});

  @override
  Widget build(BuildContext context) {
    final List<StrollAnswerModel> answers = [
      StrollAnswerModel(
        username: 'Abdul',
        answer: 'The peace in the early mornings',
      ),
      StrollAnswerModel(
        username: 'Bola',
        answer: 'The magical golden hours',
      ),
      StrollAnswerModel(
        username: 'Chis',
        answer: 'Wind-down time after dinners',
      ),
      StrollAnswerModel(
        username: 'David',
        answer: 'TThe serenity past midnight',
      ),
    ];

    return Padding(
      padding: const EdgeInsets.all(StrollSizes.md),
      child: PGridLayout(
        itemCount: answers.length,
        mainAxisExtent: 60,
        spacing: StrollSizes.md - 4,
        itemBuilder: (_, index) {
          final answer = answers[index];
          return StrollAnswersCard(
            answer: answer,
          );
        },
      ),
    );
  }
}
