import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:measureapp/features/assesment/logic/animal_toggle_state.dart';

class AnimalToggleCubit extends Cubit<AnimalToggleState> {
  AnimalToggleCubit() : super(const AnimalToggleState.initial());

  void toggle(bool isSelected) {
    emit(AnimalToggleState.toggled(!isSelected));
  }
}
