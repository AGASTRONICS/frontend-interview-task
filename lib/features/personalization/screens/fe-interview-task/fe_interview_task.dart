import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/background_with_stack_text.dart';
import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/user_subheader.dart';
import 'package:flutter/material.dart';

import '../../../../utils/constants/sizes.dart';

class FrontendInterviewTask extends StatelessWidget {
  const FrontendInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Stack(
            children: [
              StrollHeaderSection(),
              Positioned(
                bottom: 0,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: StrollSizes.xl),
                  child: StrollUserSubHeader(),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
