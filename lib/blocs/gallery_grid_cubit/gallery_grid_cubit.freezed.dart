// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'gallery_grid_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$GalleryGridState {
  String get uniqueKey => throw _privateConstructorUsedError;
  List<Post> get posts => throw _privateConstructorUsedError;
  GridStatus get gridStatus => throw _privateConstructorUsedError;
  List<int> get selectedPosts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GalleryGridStateCopyWith<GalleryGridState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GalleryGridStateCopyWith<$Res> {
  factory $GalleryGridStateCopyWith(
          GalleryGridState value, $Res Function(GalleryGridState) then) =
      _$GalleryGridStateCopyWithImpl<$Res, GalleryGridState>;
  @useResult
  $Res call(
      {String uniqueKey,
      List<Post> posts,
      GridStatus gridStatus,
      List<int> selectedPosts});
}

/// @nodoc
class _$GalleryGridStateCopyWithImpl<$Res, $Val extends GalleryGridState>
    implements $GalleryGridStateCopyWith<$Res> {
  _$GalleryGridStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueKey = null,
    Object? posts = null,
    Object? gridStatus = null,
    Object? selectedPosts = null,
  }) {
    return _then(_value.copyWith(
      uniqueKey: null == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      posts: null == posts
          ? _value.posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      gridStatus: null == gridStatus
          ? _value.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as GridStatus,
      selectedPosts: null == selectedPosts
          ? _value.selectedPosts
          : selectedPosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$GalleryGridStateImplCopyWith<$Res>
    implements $GalleryGridStateCopyWith<$Res> {
  factory _$$GalleryGridStateImplCopyWith(_$GalleryGridStateImpl value,
          $Res Function(_$GalleryGridStateImpl) then) =
      __$$GalleryGridStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uniqueKey,
      List<Post> posts,
      GridStatus gridStatus,
      List<int> selectedPosts});
}

/// @nodoc
class __$$GalleryGridStateImplCopyWithImpl<$Res>
    extends _$GalleryGridStateCopyWithImpl<$Res, _$GalleryGridStateImpl>
    implements _$$GalleryGridStateImplCopyWith<$Res> {
  __$$GalleryGridStateImplCopyWithImpl(_$GalleryGridStateImpl _value,
      $Res Function(_$GalleryGridStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uniqueKey = null,
    Object? posts = null,
    Object? gridStatus = null,
    Object? selectedPosts = null,
  }) {
    return _then(_$GalleryGridStateImpl(
      uniqueKey: null == uniqueKey
          ? _value.uniqueKey
          : uniqueKey // ignore: cast_nullable_to_non_nullable
              as String,
      posts: null == posts
          ? _value._posts
          : posts // ignore: cast_nullable_to_non_nullable
              as List<Post>,
      gridStatus: null == gridStatus
          ? _value.gridStatus
          : gridStatus // ignore: cast_nullable_to_non_nullable
              as GridStatus,
      selectedPosts: null == selectedPosts
          ? _value._selectedPosts
          : selectedPosts // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc

class _$GalleryGridStateImpl implements _GalleryGridState {
  _$GalleryGridStateImpl(
      {required this.uniqueKey,
      final List<Post> posts = const [],
      this.gridStatus = GridStatus.idle,
      final List<int> selectedPosts = const []})
      : _posts = posts,
        _selectedPosts = selectedPosts;

  @override
  final String uniqueKey;
  final List<Post> _posts;
  @override
  @JsonKey()
  List<Post> get posts {
    if (_posts is EqualUnmodifiableListView) return _posts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_posts);
  }

  @override
  @JsonKey()
  final GridStatus gridStatus;
  final List<int> _selectedPosts;
  @override
  @JsonKey()
  List<int> get selectedPosts {
    if (_selectedPosts is EqualUnmodifiableListView) return _selectedPosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedPosts);
  }

  @override
  String toString() {
    return 'GalleryGridState(uniqueKey: $uniqueKey, posts: $posts, gridStatus: $gridStatus, selectedPosts: $selectedPosts)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$GalleryGridStateImpl &&
            (identical(other.uniqueKey, uniqueKey) ||
                other.uniqueKey == uniqueKey) &&
            const DeepCollectionEquality().equals(other._posts, _posts) &&
            (identical(other.gridStatus, gridStatus) ||
                other.gridStatus == gridStatus) &&
            const DeepCollectionEquality()
                .equals(other._selectedPosts, _selectedPosts));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      uniqueKey,
      const DeepCollectionEquality().hash(_posts),
      gridStatus,
      const DeepCollectionEquality().hash(_selectedPosts));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$GalleryGridStateImplCopyWith<_$GalleryGridStateImpl> get copyWith =>
      __$$GalleryGridStateImplCopyWithImpl<_$GalleryGridStateImpl>(
          this, _$identity);
}

abstract class _GalleryGridState implements GalleryGridState {
  factory _GalleryGridState(
      {required final String uniqueKey,
      final List<Post> posts,
      final GridStatus gridStatus,
      final List<int> selectedPosts}) = _$GalleryGridStateImpl;

  @override
  String get uniqueKey;
  @override
  List<Post> get posts;
  @override
  GridStatus get gridStatus;
  @override
  List<int> get selectedPosts;
  @override
  @JsonKey(ignore: true)
  _$$GalleryGridStateImplCopyWith<_$GalleryGridStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
