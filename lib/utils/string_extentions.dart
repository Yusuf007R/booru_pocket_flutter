extension StringExtension on String {
  String capitalize() {
    if (isEmpty) return this;
    return "${this[0].toUpperCase()}${substring(1).toLowerCase()}";
  }

  String overflowEllipsis(int? len) {
    return length > (len ?? 10) ? '${substring(0, len ?? 10)}...' : this;
  }
}
