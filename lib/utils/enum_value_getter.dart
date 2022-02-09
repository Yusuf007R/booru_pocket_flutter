enumValueGetter<T extends Enum>(List<T> enumValues, dynamic value) {
  final value2 =
      value.runtimeType == String ? (value as String).toLowerCase() : value;
  return enumValues
      .firstWhere((element) => element.name.toLowerCase() == value2);
}
