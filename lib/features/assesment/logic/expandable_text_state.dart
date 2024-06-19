import 'package:freezed_annotation/freezed_annotation.dart';

part 'expandable_text_state.freezed.dart';

@freezed
class ExpandableTextState with _$ExpandableTextState {
  const factory ExpandableTextState.collapsed() = Collapsed;
  const factory ExpandableTextState.expanded() = ExpandedState;
}
