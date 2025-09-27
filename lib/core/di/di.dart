import 'package:fin_enlight/core/di/di.config.dart';

import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

final GetIt sl = GetIt.instance;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: true,
  includeMicroPackages: true,
)
Future<void> configureDependencies() async {
  await sl.init();
}
