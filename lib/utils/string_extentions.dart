import 'dart:math';

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String overFlowElipsis(int? len) {
    return length > (len ?? 10) ? '${substring(0, len ?? 10)}...' : this;
  }
}
