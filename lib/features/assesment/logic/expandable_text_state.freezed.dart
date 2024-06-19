// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expandable_text_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ExpandableTextState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() collapsed,
    required TResult Function() expanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? collapsed,
    TResult? Function()? expanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? collapsed,
    TResult Function()? expanded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Collapsed value) collapsed,
    required TResult Function(ExpandedState value) expanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Collapsed value)? collapsed,
    TResult? Function(ExpandedState value)? expanded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Collapsed value)? collapsed,
    TResult Function(ExpandedState value)? expanded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpandableTextStateCopyWith<$Res> {
  factory $ExpandableTextStateCopyWith(
          ExpandableTextState value, $Res Function(ExpandableTextState) then) =
      _$ExpandableTextStateCopyWithImpl<$Res, ExpandableTextState>;
}

/// @nodoc
class _$ExpandableTextStateCopyWithImpl<$Res, $Val extends ExpandableTextState>
    implements $ExpandableTextStateCopyWith<$Res> {
  _$ExpandableTextStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$CollapsedImplCopyWith<$Res> {
  factory _$$CollapsedImplCopyWith(
          _$CollapsedImpl value, $Res Function(_$CollapsedImpl) then) =
      __$$CollapsedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CollapsedImplCopyWithImpl<$Res>
    extends _$ExpandableTextStateCopyWithImpl<$Res, _$CollapsedImpl>
    implements _$$CollapsedImplCopyWith<$Res> {
  __$$CollapsedImplCopyWithImpl(
      _$CollapsedImpl _value, $Res Function(_$CollapsedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CollapsedImpl implements Collapsed {
  const _$CollapsedImpl();

  @override
  String toString() {
    return 'ExpandableTextState.collapsed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CollapsedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() collapsed,
    required TResult Function() expanded,
  }) {
    return collapsed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? collapsed,
    TResult? Function()? expanded,
  }) {
    return collapsed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? collapsed,
    TResult Function()? expanded,
    required TResult orElse(),
  }) {
    if (collapsed != null) {
      return collapsed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Collapsed value) collapsed,
    required TResult Function(ExpandedState value) expanded,
  }) {
    return collapsed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Collapsed value)? collapsed,
    TResult? Function(ExpandedState value)? expanded,
  }) {
    return collapsed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Collapsed value)? collapsed,
    TResult Function(ExpandedState value)? expanded,
    required TResult orElse(),
  }) {
    if (collapsed != null) {
      return collapsed(this);
    }
    return orElse();
  }
}

abstract class Collapsed implements ExpandableTextState {
  const factory Collapsed() = _$CollapsedImpl;
}

/// @nodoc
abstract class _$$ExpandedStateImplCopyWith<$Res> {
  factory _$$ExpandedStateImplCopyWith(
          _$ExpandedStateImpl value, $Res Function(_$ExpandedStateImpl) then) =
      __$$ExpandedStateImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ExpandedStateImplCopyWithImpl<$Res>
    extends _$ExpandableTextStateCopyWithImpl<$Res, _$ExpandedStateImpl>
    implements _$$ExpandedStateImplCopyWith<$Res> {
  __$$ExpandedStateImplCopyWithImpl(
      _$ExpandedStateImpl _value, $Res Function(_$ExpandedStateImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ExpandedStateImpl implements ExpandedState {
  const _$ExpandedStateImpl();

  @override
  String toString() {
    return 'ExpandableTextState.expanded()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ExpandedStateImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() collapsed,
    required TResult Function() expanded,
  }) {
    return expanded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? collapsed,
    TResult? Function()? expanded,
  }) {
    return expanded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? collapsed,
    TResult Function()? expanded,
    required TResult orElse(),
  }) {
    if (expanded != null) {
      return expanded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Collapsed value) collapsed,
    required TResult Function(ExpandedState value) expanded,
  }) {
    return expanded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Collapsed value)? collapsed,
    TResult? Function(ExpandedState value)? expanded,
  }) {
    return expanded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Collapsed value)? collapsed,
    TResult Function(ExpandedState value)? expanded,
    required TResult orElse(),
  }) {
    if (expanded != null) {
      return expanded(this);
    }
    return orElse();
  }
}

abstract class ExpandedState implements ExpandableTextState {
  const factory ExpandedState() = _$ExpandedStateImpl;
}
