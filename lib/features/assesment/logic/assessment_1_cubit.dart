import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/logic/assessment_1_state.dart';

class Assessment1Cubit extends Cubit<Assessment1ButtonSelectionState> {
  Assessment1Cubit() : super(const Assessment1ButtonSelectionState.initial());
  void selectButton(int index) {
    emit(Assessment1ButtonSelectionState.selected(index));
  }
}
