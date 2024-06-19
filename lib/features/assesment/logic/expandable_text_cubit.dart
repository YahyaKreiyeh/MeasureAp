import 'package:flutter_bloc/flutter_bloc.dart';

import 'expandable_text_state.dart';

class ExpandableTextCubit extends Cubit<ExpandableTextState> {
  ExpandableTextCubit() : super(const ExpandableTextState.collapsed());

  void toggleExpand() {
    state is Collapsed
        ? emit(const ExpandableTextState.expanded())
        : emit(const ExpandableTextState.collapsed());
  }
}
