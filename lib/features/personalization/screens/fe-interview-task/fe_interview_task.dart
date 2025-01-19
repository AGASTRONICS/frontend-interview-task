import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/answers_section.dart';
import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/background_with_stack_text.dart';
import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/content_actions.dart';
import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/user_subheader.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/texts.dart';

class FrontendInterviewTask extends StatelessWidget {
  const FrontendInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          StrollHeaderSection(),
          Positioned(
            bottom: 0,
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: StrollSizes.lg),
                  child: StrollUserSubHeader(),
                ),
              ],
            ),
          ),
          Text(
            '"${StrollTexts.question2}"',
            style: TextStyle(
              color: StrollColors.accent,
            ),
          ),
          Expanded(
            child: Column(
              children: [
                StrollAnswersSection(),
                StrollContentActionsSection(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
