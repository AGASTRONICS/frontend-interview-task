import 'package:feinterview/utils/device/device_utility.dart';
import 'package:flutter/material.dart';

import 'features/personalization/screens/fe-interview-task/fe-interview-task.dart';

class StrollApp extends StatelessWidget {
  const StrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    StrollDeviceUtils.setStatusBarColor(Colors.transparent);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: const FrontendInterviewTask(),
    );
  }
}
