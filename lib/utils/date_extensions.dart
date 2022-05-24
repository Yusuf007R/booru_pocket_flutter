extension DateTimeExtension on DateTime {
  static const int daysPerMonth = 31;
  DateTime startOfWeek() => subtract(Duration(days: weekday - 1));
  DateTime endOfWeek() => add(Duration(days: DateTime.daysPerWeek - weekday));

  DateTime startOfMonth() => subtract(Duration(days: day - 1));
  DateTime endOfMonth() => add(Duration(days: daysPerMonth - day));
}

extension DateTimeFormat on DateTime {
  String yyyyMMdd() =>
      "$year-${month.toString().padLeft(2, '0')}-${day.toString().padLeft(2, '0')}";
}
