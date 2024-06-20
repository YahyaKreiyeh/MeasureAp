import 'package:freezed_annotation/freezed_annotation.dart';

part 'navigation_state.freezed.dart';

@freezed
class NavigationState with _$NavigationState {
  const factory NavigationState({
    required int selectedIndex,
  }) = _NavigationState;

  factory NavigationState.initial() => const NavigationState(selectedIndex: 0);
}
