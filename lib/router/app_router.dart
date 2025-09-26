import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/presentation/pages/pages.dart';

part 'app_router.gr.dart';

@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          initial: true,
        ),
        AutoRoute(
          page: FeedRoute.page,
          path: '/feed',
        ),
      ];
}
