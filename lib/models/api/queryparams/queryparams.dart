import 'package:freezed_annotation/freezed_annotation.dart';

part 'queryparams.freezed.dart';
part 'queryparams.g.dart';

@freezed
class QueryParams with _$QueryParams {
  // const factory QueryParams.recommended({
  //   @Default(1) int page,
  //   @Default(50) int limit,
  //   @JsonKey(name: 'search[user_name]') required String user,
  //   @JsonKey(name: 'search[post_tags_match]') required String tags,
  //   @JsonKey(name: 'search[post_id]') required int postId,
  // }) = RecommendedParams;

  factory QueryParams.fromJson(Map<String, dynamic> json) =>
      _$QueryParamsFromJson(json);

  const factory QueryParams.post({
    @Default(1) int page,
    @Default('') String tags,
    @JsonKey(includeFromJson: false)
    @Default(QueryParamsPostType.post)
    QueryParamsPostType type,
  }) = PostParams;
}

enum QueryParamsPostType { datePost, post }
