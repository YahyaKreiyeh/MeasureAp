import 'package:freezed_annotation/freezed_annotation.dart';

part 'check_button_state.freezed.dart';

@freezed
class CheckButtonState with _$CheckButtonState {
  const factory CheckButtonState.initial() = Initial;
  const factory CheckButtonState.done() = Done;
}
