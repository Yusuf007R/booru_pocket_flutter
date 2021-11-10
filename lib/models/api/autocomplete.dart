import 'package:equatable/equatable.dart';

class AutoComplete extends Equatable {
  final String label;
  final String value;
  final int postCount;

  const AutoComplete({
    required this.label,
    required this.value,
    required this.postCount,
  });

  static AutoComplete fromJson(Map<String, dynamic> json) => AutoComplete(
        label: json["label"],
        value: json["value"],
        postCount: json["post_count"],
      );

  @override
  List<Object?> get props => [label, value, postCount];
}
