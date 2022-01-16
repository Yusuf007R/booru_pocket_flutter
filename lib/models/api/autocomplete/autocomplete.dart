// ignore_for_file: invalid_annotation_target
import 'package:freezed_annotation/freezed_annotation.dart';

part 'autocomplete.freezed.dart';
part 'autocomplete.g.dart';

@freezed
class AutoComplete with _$AutoComplete {
  const AutoComplete._();

  factory AutoComplete({
    required String label,
    required String value,
    @JsonKey(name: 'post_count') required int postCount,
  }) = _AutoComplete;

  factory AutoComplete.fromJson(Map<String, dynamic> json) =>
      _$AutoCompleteFromJson(json);
}
