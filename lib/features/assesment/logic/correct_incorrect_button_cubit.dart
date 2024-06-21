import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/logic/correct_incorrect_button_state.dart';

class CorrectIncorrectButtonCubit extends Cubit<CorrectIncorrectButtonState> {
  CorrectIncorrectButtonCubit()
      : super(const CorrectIncorrectButtonState.initial());
  void selectButton(int index) {
    emit(CorrectIncorrectButtonState.selected(index));
  }
}
