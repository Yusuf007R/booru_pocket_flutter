import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

_parseAndDecode(String response) {
  return jsonDecode(response);
}

class MyTransformer extends BackgroundTransformer {
  @override
  JsonDecodeCallback get jsonDecodeCallback => parseJson;
}
