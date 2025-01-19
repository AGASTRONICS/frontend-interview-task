import 'package:feinterview/features/personalization/screens/fe-interview-task/widgets/background_with_stack_text.dart';
import 'package:flutter/material.dart';

class FrontendInterviewTask extends StatelessWidget {
  const FrontendInterviewTask({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          StrollHeaderSection(),
          // StrollUserSubHeader(),
        ],
      ),
    );
  }
}
