import 'package:feinterview/cubit/answer_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  runApp(
    MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AnswersCubit()),
      ],
      child: StrollApp(),
    ),
  );
}
