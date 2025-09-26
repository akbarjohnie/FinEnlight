import 'package:fin_enlight/core/core.dart';
import 'package:flutter/material.dart';

extension CoreUtils on BuildContext {
  T dependencies<T extends Object>() => sl.get<T>();
}
