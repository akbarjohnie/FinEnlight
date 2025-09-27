import 'package:auto_route/auto_route.dart';
import 'package:fin_enlight/core/core.dart';
import 'package:flutter/material.dart';

class FinEnlightApp extends StatelessWidget {
  const FinEnlightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: context.dependencies<RootStackRouter>().config(
            navigatorObservers: () => [
              AutoRouteObserver(),
            ],
          ),
      title: 'FinEnlight',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
          surface: AppColors.alabaster,
        ),
        useMaterial3: true,
      ),
    );
  }
}
