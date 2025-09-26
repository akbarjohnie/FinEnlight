import 'package:fin_enlight/app.dart';
import 'package:flutter/material.dart';

import 'core/core.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(const FinEnlightApp());
}
