import 'package:flutter/material.dart';

import 'features/personalization/screens/fe-interview-task/fe-interview-task.dart';

class StrollApp extends StatelessWidget {
  const StrollApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const FrontendInterviewTask(),
    );
  }
}
