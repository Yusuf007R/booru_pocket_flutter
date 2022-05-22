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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

GalleryGridState _$GalleryGridStateFromJson(Map<String, dynamic> json) {
  return _GalleryGridState.fromJson(json);
}

/// @nodoc
mixin _$GalleryGridState {
  List<Post> get posts => throw _privateConstructorUsedError;
  GridStatus get gridStatus => throw _privateConstructorUsedError;
  String get uniqueKey => throw _privateConstructorUsedError;
  List<int> get selectedPosts => throw _privateConstructorUsedError;

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
      GridStatus gridStatus,
      String uniqueKey,
      List<int> selectedPosts});
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
    Object? gridStatus = freezed,
    Object? uniqueKey = freezed,
    Object? selectedPosts = freezed,
  }) {
    return _then(_value.copyWith(
      posts: posts == freezed
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      gridStatus: gridStatus == freezed
          ? _value.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as GridStatus,
      uniqueKey: uniqueKey == freezed
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPosts: selectedPosts == freezed
          ? _value.selectedPosts
          : selectedPosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_GalleryGridStateCopyWith<$Res>
    implements $GalleryGridStateCopyWith<$Res> {
  factory _$$_GalleryGridStateCopyWith(
          _$_GalleryGridState value, $Res Function(_$_GalleryGridState) then) =
      __$$_GalleryGridStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Post> posts,
      GridStatus gridStatus,
      String uniqueKey,
      List<int> selectedPosts});
}

/// @nodoc
class __$$_GalleryGridStateCopyWithImpl<$Res>
    extends _$GalleryGridStateCopyWithImpl<$Res>
    implements _$$_GalleryGridStateCopyWith<$Res> {
  __$$_GalleryGridStateCopyWithImpl(
      _$_GalleryGridState _value, $Res Function(_$_GalleryGridState) _then)
      : super(_value, (v) => _then(v as _$_GalleryGridState));

  @override
  _$_GalleryGridState get _value => super._value as _$_GalleryGridState;

  @override
  $Res call({
    Object? posts = freezed,
    Object? gridStatus = freezed,
    Object? uniqueKey = freezed,
    Object? selectedPosts = freezed,
  }) {
    return _then(_$_GalleryGridState(
      posts: posts == freezed
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      gridStatus: gridStatus == freezed
          ? _value.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as GridStatus,
      uniqueKey: uniqueKey == freezed
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      selectedPosts: selectedPosts == freezed
          ? _value._selectedPosts
          : selectedPosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_GalleryGridState implements _GalleryGridState {
  _$_GalleryGridState(
      {final List<Post> posts = const [],
      this.gridStatus = GridStatus.idle,
      required this.uniqueKey,
      final List<int> selectedPosts = const []})
      : _posts = posts,
        _selectedPosts = selectedPosts;

  factory _$_GalleryGridState.fromJson(Map<String, dynamic> json) =>
      _$$_GalleryGridStateFromJson(json);

  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final GridStatus gridStatus;
  @override
  final String uniqueKey;
  final List<int> _selectedPosts;
  @override
  @JsonKey()
  List<int> get selectedPosts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPosts);
  }

  @override
  String toString() {
    return 'GalleryGridState(posts: $posts, gridStatus: $gridStatus, uniqueKey: $uniqueKey, selectedPosts: $selectedPosts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_GalleryGridState &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            const DeepCollectionEquality()
                .equals(other.gridStatus, gridStatus) &&
            const DeepCollectionEquality().equals(other.uniqueKey, uniqueKey) &&
            const DeepCollectionEquality()
                .equals(other._selectedPosts, _selectedPosts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_posts),
      const DeepCollectionEquality().hash(gridStatus),
      const DeepCollectionEquality().hash(uniqueKey),
      const DeepCollectionEquality().hash(_selectedPosts));

  @JsonKey(ignore: true)
  @override
  _$$_GalleryGridStateCopyWith<_$_GalleryGridState> get copyWith =>
      __$$_GalleryGridStateCopyWithImpl<_$_GalleryGridState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_GalleryGridStateToJson(this);
  }
}

abstract class _GalleryGridState implements GalleryGridState {
  factory _GalleryGridState(
      {final List<Post> posts,
      final GridStatus gridStatus,
      required final String uniqueKey,
      final List<int> selectedPosts}) = _$_GalleryGridState;

  factory _GalleryGridState.fromJson(Map<String, dynamic> json) =
      _$_GalleryGridState.fromJson;

  @override
  List<Post> get posts => throw _privateConstructorUsedError;
  @override
  GridStatus get gridStatus => throw _privateConstructorUsedError;
  @override
  String get uniqueKey => throw _privateConstructorUsedError;
  @override
  List<int> get selectedPosts => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_GalleryGridStateCopyWith<_$_GalleryGridState> get copyWith =>
      throw _privateConstructorUsedError;
}
