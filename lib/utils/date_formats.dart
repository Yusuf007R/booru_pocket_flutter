extension DateTimeExtension on DateTime {
  static const int daysPerMonth = 31;
  DateTime get startOfWeek => subtract(Duration(days: weekday - 1));
  DateTime get endOfWeek => add(Duration(days: DateTime.daysPerWeek - weekday));

  DateTime get startOfMonth => subtract(Duration(days: day - 1));
  DateTime get endOfMonth => add(Duration(days: daysPerMonth - day));
}

extension DateTimeFormat on DateTime {
  String get yyyyMMdd =>
      "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
}
