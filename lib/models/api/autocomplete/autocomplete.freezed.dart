// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'autocomplete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AutoComplete _$AutoCompleteFromJson(Map<String, dynamic> json) {
  return _AutoComplete.fromJson(json);
}

/// @nodoc
class _$AutoCompleteTearOff {
  const _$AutoCompleteTearOff();

  _AutoComplete call(
      {required String label,
      required String value,
      @JsonKey(name: 'post_count') int postCount = 0}) {
    return _AutoComplete(
      label: label,
      value: value,
      postCount: postCount,
    );
  }

  AutoComplete fromJson(Map<String, Object?> json) {
    return AutoComplete.fromJson(json);
  }
}

/// @nodoc
const $AutoComplete = _$AutoCompleteTearOff();

/// @nodoc
mixin _$AutoComplete {
  String get label => throw _privateConstructorUsedError;
  String get value => throw _privateConstructorUsedError;
  @JsonKey(name: 'post_count')
  int get postCount => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AutoCompleteCopyWith<AutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AutoCompleteCopyWith<$Res> {
  factory $AutoCompleteCopyWith(
          AutoComplete value, $Res Function(AutoComplete) then) =
      _$AutoCompleteCopyWithImpl<$Res>;
  $Res call(
      {String label, String value, @JsonKey(name: 'post_count') int postCount});
}

/// @nodoc
class _$AutoCompleteCopyWithImpl<$Res> implements $AutoCompleteCopyWith<$Res> {
  _$AutoCompleteCopyWithImpl(this._value, this._then);

  final AutoComplete _value;
  // ignore: unused_field
  final $Res Function(AutoComplete) _then;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
    Object? postCount = freezed,
  }) {
    return _then(_value.copyWith(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$AutoCompleteCopyWith<$Res>
    implements $AutoCompleteCopyWith<$Res> {
  factory _$AutoCompleteCopyWith(
          _AutoComplete value, $Res Function(_AutoComplete) then) =
      __$AutoCompleteCopyWithImpl<$Res>;
  @override
  $Res call(
      {String label, String value, @JsonKey(name: 'post_count') int postCount});
}

/// @nodoc
class __$AutoCompleteCopyWithImpl<$Res> extends _$AutoCompleteCopyWithImpl<$Res>
    implements _$AutoCompleteCopyWith<$Res> {
  __$AutoCompleteCopyWithImpl(
      _AutoComplete _value, $Res Function(_AutoComplete) _then)
      : super(_value, (v) => _then(v as _AutoComplete));

  @override
  _AutoComplete get _value => super._value as _AutoComplete;

  @override
  $Res call({
    Object? label = freezed,
    Object? value = freezed,
    Object? postCount = freezed,
  }) {
    return _then(_AutoComplete(
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: postCount == freezed
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AutoComplete extends _AutoComplete {
  _$_AutoComplete(
      {required this.label,
      required this.value,
      @JsonKey(name: 'post_count') this.postCount = 0})
      : super._();

  factory _$_AutoComplete.fromJson(Map<String, dynamic> json) =>
      _$$_AutoCompleteFromJson(json);

  @override
  final String label;
  @override
  final String value;
  @override
  @JsonKey(name: 'post_count')
  final int postCount;

  @override
  String toString() {
    return 'AutoComplete(label: $label, value: $value, postCount: $postCount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AutoComplete &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.postCount, postCount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(postCount));

  @JsonKey(ignore: true)
  @override
  _$AutoCompleteCopyWith<_AutoComplete> get copyWith =>
      __$AutoCompleteCopyWithImpl<_AutoComplete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AutoCompleteToJson(this);
  }
}

abstract class _AutoComplete extends AutoComplete {
  factory _AutoComplete(
      {required String label,
      required String value,
      @JsonKey(name: 'post_count') int postCount}) = _$_AutoComplete;
  _AutoComplete._() : super._();

  factory _AutoComplete.fromJson(Map<String, dynamic> json) =
      _$_AutoComplete.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(name: 'post_count')
  int get postCount;
  @override
  @JsonKey(ignore: true)
  _$AutoCompleteCopyWith<_AutoComplete> get copyWith =>
      throw _privateConstructorUsedError;
}
