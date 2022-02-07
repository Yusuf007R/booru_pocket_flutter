import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

_parseAndDecode(String response) {
  return jsonDecode(response);
}

parseJson(String text) {
  return compute(_parseAndDecode, text);
}

class MyTransformer extends DefaultTransformer {
  MyTransformer() : super(jsonDecodeCallback: parseJson);
}
