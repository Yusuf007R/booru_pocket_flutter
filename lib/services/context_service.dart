import 'package:flutter/cupertino.dart';

class ContextService {
  late BuildContext _context;
  void setContext(BuildContext c) => _context = c;

  BuildContext get context => _context;
}