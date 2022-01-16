// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'gallery_grid_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryGridState _$GalleryGridStateFromJson(Map<String, dynamic> json) {
  return _GalleryGridState.fromJson(json);
}

/// @nodoc
class _$GalleryGridStateTearOff {
  const _$GalleryGridStateTearOff();

  _GalleryGridState call(
      {List<Post> posts = const [],
      bool loading = false,
      bool refreshing = false,
      required String uniqueKey,
      int currentDetailIndex = 1}) {
    return _GalleryGridState(
      posts: posts,
      loading: loading,
      refreshing: refreshing,
      uniqueKey: uniqueKey,
      currentDetailIndex: currentDetailIndex,
    );
  }

  GalleryGridState fromJson(Map<String, Object?> json) {
    return GalleryGridState.fromJson(json);
  }
}

/// @nodoc
const $GalleryGridState = _$GalleryGridStateTearOff();

/// @nodoc
mixin _$GalleryGridState {
  List<Post> get posts => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  bool get refreshing => throw _privateConstructorUsedError;
  String get uniqueKey => throw _privateConstructorUsedError;
  int get currentDetailIndex => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $GalleryGridStateCopyWith<GalleryGridState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryGridStateCopyWith<$Res> {
  factory $GalleryGridStateCopyWith(
          GalleryGridState value, $Res Function(GalleryGridState) then) =
      _$GalleryGridStateCopyWithImpl<$Res>;
  $Res call(
      {List<Post> posts,
      bool loading,
      bool refreshing,
      String uniqueKey,
      int currentDetailIndex});
}

/// @nodoc
class _$GalleryGridStateCopyWithImpl<$Res>
    implements $GalleryGridStateCopyWith<$Res> {
  _$GalleryGridStateCopyWithImpl(this._value, this._then);

  final GalleryGridState _value;
  // ignore: unused_field
  final $Res Function(GalleryGridState) _then;

  @override
  $Res call({
    Object? posts = freezed,
    Object? loading = freezed,
    Object? refreshing = freezed,
    Object? uniqueKey = freezed,
    Object? currentDetailIndex = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueKey: uniqueKey == freezed
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      currentDetailIndex: currentDetailIndex == freezed
          ? _value.currentDetailIndex
          : currentDetailIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$GalleryGridStateCopyWith<$Res>
    implements $GalleryGridStateCopyWith<$Res> {
  factory _$GalleryGridStateCopyWith(
          _GalleryGridState value, $Res Function(_GalleryGridState) then) =
      __$GalleryGridStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Post> posts,
      bool loading,
      bool refreshing,
      String uniqueKey,
      int currentDetailIndex});
}

/// @nodoc
class __$GalleryGridStateCopyWithImpl<$Res>
    extends _$GalleryGridStateCopyWithImpl<$Res>
    implements _$GalleryGridStateCopyWith<$Res> {
  __$GalleryGridStateCopyWithImpl(
      _GalleryGridState _value, $Res Function(_GalleryGridState) _then)
      : super(_value, (v) => _then(v as _GalleryGridState));

  @override
  _GalleryGridState get _value => super._value as _GalleryGridState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? loading = freezed,
    Object? refreshing = freezed,
    Object? uniqueKey = freezed,
    Object? currentDetailIndex = freezed,
  }) {
    return _then(_GalleryGridState(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      loading: loading == freezed
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      refreshing: refreshing == freezed
          ? _value.refreshing
          : refreshing // ignore: cast_nullable_to_non_nullable
              as bool,
      uniqueKey: uniqueKey == freezed
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      currentDetailIndex: currentDetailIndex == freezed
          ? _value.currentDetailIndex
          : currentDetailIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GalleryGridState implements _GalleryGridState {
  _$_GalleryGridState(
      {this.posts = const [],
      this.loading = false,
      this.refreshing = false,
      required this.uniqueKey,
      this.currentDetailIndex = 1});

  factory _$_GalleryGridState.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryGridStateFromJson(json);

  @JsonKey()
  @override
  final List<Post> posts;
  @JsonKey()
  @override
  final bool loading;
  @JsonKey()
  @override
  final bool refreshing;
  @override
  final String uniqueKey;
  @JsonKey()
  @override
  final int currentDetailIndex;

  @override
  String toString() {
    return 'GalleryGridState(posts: $posts, loading: $loading, refreshing: $refreshing, uniqueKey: $uniqueKey, currentDetailIndex: $currentDetailIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _GalleryGridState &&
            const DeepCollectionEquality().equals(other.posts, posts) &&
            const DeepCollectionEquality().equals(other.loading, loading) &&
            const DeepCollectionEquality()
                .equals(other.refreshing, refreshing) &&
            const DeepCollectionEquality().equals(other.uniqueKey, uniqueKey) &&
            const DeepCollectionEquality()
                .equals(other.currentDetailIndex, currentDetailIndex));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(posts),
      const DeepCollectionEquality().hash(loading),
      const DeepCollectionEquality().hash(refreshing),
      const DeepCollectionEquality().hash(uniqueKey),
      const DeepCollectionEquality().hash(currentDetailIndex));

  @JsonKey(ignore: true)
  @override
  _$GalleryGridStateCopyWith<_GalleryGridState> get copyWith =>
      __$GalleryGridStateCopyWithImpl<_GalleryGridState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryGridStateToJson(this);
  }
}

abstract class _GalleryGridState implements GalleryGridState {
  factory _GalleryGridState(
      {List<Post> posts,
      bool loading,
      bool refreshing,
      required String uniqueKey,
      int currentDetailIndex}) = _$_GalleryGridState;

  factory _GalleryGridState.fromJson(Map<String, dynamic> json) =
      _$_GalleryGridState.fromJson;

  @override
  List<Post> get posts;
  @override
  bool get loading;
  @override
  bool get refreshing;
  @override
  String get uniqueKey;
  @override
  int get currentDetailIndex;
  @override
  @JsonKey(ignore: true)
  _$GalleryGridStateCopyWith<_GalleryGridState> get copyWith =>
      throw _privateConstructorUsedError;
}
