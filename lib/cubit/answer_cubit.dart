import 'package:bloc/bloc.dart';

class AnswersCubit extends Cubit<int?> {
  AnswersCubit() : super(null);

  // Method to set the active card
  void setActiveCard(int index) {
    emit(index);
  }
}
