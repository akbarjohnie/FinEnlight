import 'package:fin_enlight/core/di/di.config.dart';
import 'package:flutter/material.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt _sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  includeMicroPackages: true,
)
Future<void> configureDependencies() async {
  await _sl.init();
}

extension DependenciesExtension on BuildContext {
  T dependencies<T extends Object>() => _sl.get<T>();
}
