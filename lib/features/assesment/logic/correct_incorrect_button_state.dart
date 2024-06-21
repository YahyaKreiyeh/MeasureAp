import 'package:freezed_annotation/freezed_annotation.dart';

part 'correct_incorrect_button_state.freezed.dart';

@freezed
class CorrectIncorrectButtonState with _$CorrectIncorrectButtonState {
  const factory CorrectIncorrectButtonState.initial() = Initial;
  const factory CorrectIncorrectButtonState.selected(int index) = Selected;
}
