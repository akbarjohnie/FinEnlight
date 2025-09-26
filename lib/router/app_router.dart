import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/presentation/pages/pages.dart';
import 'package:injectable/injectable.dart';

part 'app_router.gr.dart';

@Injectable(as: RootStackRouter)
@AutoRouterConfig()
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: HomeRoute.page,
          path: '/home',
          initial: true,
          children: [
            AutoRoute(
              page: FeedRoute.page,
              path: 'feed',
              initial: true,
            ),
            AutoRoute(
              page: ExpenseManagerRoute.page,
              path: 'expense_manager',
            ),
          ],
        ),
      ];
}
