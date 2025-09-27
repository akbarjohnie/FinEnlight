import 'package:fin_enlight/app.dart';
import 'package:fin_enlight/core/core.dart';
import 'package:flutter/material.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  configureDependencies();
  runApp(const FinEnlightApp());
}
