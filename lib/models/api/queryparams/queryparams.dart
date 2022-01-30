import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:booru_pocket_flutter/blocs/popular_screen_nav_bar/popular_screen_nav_bar_cubit.dart';

part 'queryparams.freezed.dart';

part 'queryparams.g.dart';

@freezed
class QueryParams with _$QueryParams {
  const factory QueryParams.post({
    @Default(1) int page,
    @Default(500) int limit,
    @Default('') String tags,
  }) = PostParams;

  const factory QueryParams.popular({
    @Default(1) int page,
    @Default(50) int limit,
    required DateTime date,
    @Default(ScaleType.day) ScaleType scale,
  }) = PopularParams;

  const factory QueryParams.recommended({
    @Default(1) int page,
    @Default(50) int limit,
    @JsonKey(name: 'search[user_name]') required String user,
    @JsonKey(name: 'search[post_tags_match]') required String tags,
    @JsonKey(name: 'search[post_id]') required int postId,
  }) = RecommendedParams;

  factory QueryParams.fromJson(Map<String, dynamic> json) =>
      _$QueryParamsFromJson(json);
}
