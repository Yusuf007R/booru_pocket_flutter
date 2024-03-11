// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'autocomplete.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AutoComplete _$AutoCompleteFromJson(Map<String, dynamic> json) {
  return _AutoComplete.fromJson(json);
}

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
      _$AutoCompleteCopyWithImpl<$Res, AutoComplete>;
  @useResult
  $Res call(
      {String label, String value, @JsonKey(name: 'post_count') int postCount});
}

/// @nodoc
class _$AutoCompleteCopyWithImpl<$Res, $Val extends AutoComplete>
    implements $AutoCompleteCopyWith<$Res> {
  _$AutoCompleteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? postCount = null,
  }) {
    return _then(_value.copyWith(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AutoCompleteImplCopyWith<$Res>
    implements $AutoCompleteCopyWith<$Res> {
  factory _$$AutoCompleteImplCopyWith(
          _$AutoCompleteImpl value, $Res Function(_$AutoCompleteImpl) then) =
      __$$AutoCompleteImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String label, String value, @JsonKey(name: 'post_count') int postCount});
}

/// @nodoc
class __$$AutoCompleteImplCopyWithImpl<$Res>
    extends _$AutoCompleteCopyWithImpl<$Res, _$AutoCompleteImpl>
    implements _$$AutoCompleteImplCopyWith<$Res> {
  __$$AutoCompleteImplCopyWithImpl(
      _$AutoCompleteImpl _value, $Res Function(_$AutoCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? label = null,
    Object? value = null,
    Object? postCount = null,
  }) {
    return _then(_$AutoCompleteImpl(
      label: null == label
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as String,
      value: null == value
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      postCount: null == postCount
          ? _value.postCount
          : postCount // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AutoCompleteImpl extends _AutoComplete {
  _$AutoCompleteImpl(
      {required this.label,
      required this.value,
      @JsonKey(name: 'post_count') this.postCount = 0})
      : super._();

  factory _$AutoCompleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$AutoCompleteImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AutoCompleteImpl &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.postCount, postCount) ||
                other.postCount == postCount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, label, value, postCount);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$AutoCompleteImplCopyWith<_$AutoCompleteImpl> get copyWith =>
      __$$AutoCompleteImplCopyWithImpl<_$AutoCompleteImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AutoCompleteImplToJson(
      this,
    );
  }
}

abstract class _AutoComplete extends AutoComplete {
  factory _AutoComplete(
      {required final String label,
      required final String value,
      @JsonKey(name: 'post_count') final int postCount}) = _$AutoCompleteImpl;
  _AutoComplete._() : super._();

  factory _AutoComplete.fromJson(Map<String, dynamic> json) =
      _$AutoCompleteImpl.fromJson;

  @override
  String get label;
  @override
  String get value;
  @override
  @JsonKey(name: 'post_count')
  int get postCount;
  @override
  @JsonKey(ignore: true)
  _$$AutoCompleteImplCopyWith<_$AutoCompleteImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
