import 'package:freezed_annotation/freezed_annotation.dart';

part 'query_params.freezed.dart';
part 'query_params.g.dart';

@freezed
class QueryParams with _$QueryParams {
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
