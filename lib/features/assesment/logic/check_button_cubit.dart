import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/logic/check_button_state.dart';

class CheckButtonCubit extends Cubit<CheckButtonState> {
  CheckButtonCubit() : super(const CheckButtonState.initial());

  void toggleDone() {
    state.when(
      initial: () => emit(const CheckButtonState.done()),
      done: () => emit(const CheckButtonState.initial()),
    );
  }
}
