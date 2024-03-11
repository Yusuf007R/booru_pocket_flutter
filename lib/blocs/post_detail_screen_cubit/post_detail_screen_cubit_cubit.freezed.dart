// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'post_detail_screen_cubit_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PostDetailScreenCubitState {
  bool get willPop => throw _privateConstructorUsedError;
  Map<int, bool> get maxQuality => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  List<String> get selectedTags => throw _privateConstructorUsedError;
  int get currentPostIndex => throw _privateConstructorUsedError;
  bool get showMenu => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PostDetailScreenCubitStateCopyWith<PostDetailScreenCubitState>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PostDetailScreenCubitStateCopyWith<$Res> {
  factory $PostDetailScreenCubitStateCopyWith(PostDetailScreenCubitState value,
          $Res Function(PostDetailScreenCubitState) then) =
      _$PostDetailScreenCubitStateCopyWithImpl<$Res,
          PostDetailScreenCubitState>;
  @useResult
  $Res call(
      {bool willPop,
      Map<int, bool> maxQuality,
      bool loading,
      List<String> selectedTags,
      int currentPostIndex,
      bool showMenu});
}

/// @nodoc
class _$PostDetailScreenCubitStateCopyWithImpl<$Res,
        $Val extends PostDetailScreenCubitState>
    implements $PostDetailScreenCubitStateCopyWith<$Res> {
  _$PostDetailScreenCubitStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? willPop = null,
    Object? maxQuality = null,
    Object? loading = null,
    Object? selectedTags = null,
    Object? currentPostIndex = null,
    Object? showMenu = null,
  }) {
    return _then(_value.copyWith(
      willPop: null == willPop
          ? _value.willPop
          : willPop // ignore: cast_nullable_to_non_nullable
              as bool,
      maxQuality: null == maxQuality
          ? _value.maxQuality
          : maxQuality // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTags: null == selectedTags
          ? _value.selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPostIndex: null == currentPostIndex
          ? _value.currentPostIndex
          : currentPostIndex // ignore: cast_nullable_to_non_nullable
              as int,
      showMenu: null == showMenu
          ? _value.showMenu
          : showMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PostDetailScreenCubitStateImplCopyWith<$Res>
    implements $PostDetailScreenCubitStateCopyWith<$Res> {
  factory _$$PostDetailScreenCubitStateImplCopyWith(
          _$PostDetailScreenCubitStateImpl value,
          $Res Function(_$PostDetailScreenCubitStateImpl) then) =
      __$$PostDetailScreenCubitStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool willPop,
      Map<int, bool> maxQuality,
      bool loading,
      List<String> selectedTags,
      int currentPostIndex,
      bool showMenu});
}

/// @nodoc
class __$$PostDetailScreenCubitStateImplCopyWithImpl<$Res>
    extends _$PostDetailScreenCubitStateCopyWithImpl<$Res,
        _$PostDetailScreenCubitStateImpl>
    implements _$$PostDetailScreenCubitStateImplCopyWith<$Res> {
  __$$PostDetailScreenCubitStateImplCopyWithImpl(
      _$PostDetailScreenCubitStateImpl _value,
      $Res Function(_$PostDetailScreenCubitStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? willPop = null,
    Object? maxQuality = null,
    Object? loading = null,
    Object? selectedTags = null,
    Object? currentPostIndex = null,
    Object? showMenu = null,
  }) {
    return _then(_$PostDetailScreenCubitStateImpl(
      willPop: null == willPop
          ? _value.willPop
          : willPop // ignore: cast_nullable_to_non_nullable
              as bool,
      maxQuality: null == maxQuality
          ? _value._maxQuality
          : maxQuality // ignore: cast_nullable_to_non_nullable
              as Map<int, bool>,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      selectedTags: null == selectedTags
          ? _value._selectedTags
          : selectedTags // ignore: cast_nullable_to_non_nullable
              as List<String>,
      currentPostIndex: null == currentPostIndex
          ? _value.currentPostIndex
          : currentPostIndex // ignore: cast_nullable_to_non_nullable
              as int,
      showMenu: null == showMenu
          ? _value.showMenu
          : showMenu // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PostDetailScreenCubitStateImpl implements _PostDetailScreenCubitState {
  _$PostDetailScreenCubitStateImpl(
      {this.willPop = false,
      final Map<int, bool> maxQuality = const {},
      this.loading = false,
      final List<String> selectedTags = const [],
      required this.currentPostIndex,
      this.showMenu = true})
      : _maxQuality = maxQuality,
        _selectedTags = selectedTags;

  @override
  @JsonKey()
  final bool willPop;
  final Map<int, bool> _maxQuality;
  @override
  @JsonKey()
  Map<int, bool> get maxQuality {
    if (_maxQuality is EqualUnmodifiableMapView) return _maxQuality;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_maxQuality);
  }

  @override
  @JsonKey()
  final bool loading;
  final List<String> _selectedTags;
  @override
  @JsonKey()
  List<String> get selectedTags {
    if (_selectedTags is EqualUnmodifiableListView) return _selectedTags;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_selectedTags);
  }

  @override
  final int currentPostIndex;
  @override
  @JsonKey()
  final bool showMenu;

  @override
  String toString() {
    return 'PostDetailScreenCubitState(willPop: $willPop, maxQuality: $maxQuality, loading: $loading, selectedTags: $selectedTags, currentPostIndex: $currentPostIndex, showMenu: $showMenu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PostDetailScreenCubitStateImpl &&
            (identical(other.willPop, willPop) || other.willPop == willPop) &&
            const DeepCollectionEquality()
                .equals(other._maxQuality, _maxQuality) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            const DeepCollectionEquality()
                .equals(other._selectedTags, _selectedTags) &&
            (identical(other.currentPostIndex, currentPostIndex) ||
                other.currentPostIndex == currentPostIndex) &&
            (identical(other.showMenu, showMenu) ||
                other.showMenu == showMenu));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      willPop,
      const DeepCollectionEquality().hash(_maxQuality),
      loading,
      const DeepCollectionEquality().hash(_selectedTags),
      currentPostIndex,
      showMenu);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PostDetailScreenCubitStateImplCopyWith<_$PostDetailScreenCubitStateImpl>
      get copyWith => __$$PostDetailScreenCubitStateImplCopyWithImpl<
          _$PostDetailScreenCubitStateImpl>(this, _$identity);
}

abstract class _PostDetailScreenCubitState
    implements PostDetailScreenCubitState {
  factory _PostDetailScreenCubitState(
      {final bool willPop,
      final Map<int, bool> maxQuality,
      final bool loading,
      final List<String> selectedTags,
      required final int currentPostIndex,
      final bool showMenu}) = _$PostDetailScreenCubitStateImpl;

  @override
  bool get willPop;
  @override
  Map<int, bool> get maxQuality;
  @override
  bool get loading;
  @override
  List<String> get selectedTags;
  @override
  int get currentPostIndex;
  @override
  bool get showMenu;
  @override
  @JsonKey(ignore: true)
  _$$PostDetailScreenCubitStateImplCopyWith<_$PostDetailScreenCubitStateImpl>
      get copyWith => throw _privateConstructorUsedError;
}
