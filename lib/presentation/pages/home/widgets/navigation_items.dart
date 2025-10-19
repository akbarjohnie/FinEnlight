import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

abstract class HomeNavItem {
  const HomeNavItem({
    required this.iconBuilder,
    required this.routePath,
  });

  final Widget Function(bool isActive) iconBuilder;
  final String routePath;

  void navigate(BuildContext ctx, {String? selectedPath}) {
    ctx.router.navigateNamed(
      '/home/$routePath',
    );
  }

  static Color? _getIconColor(bool isActive) => isActive ? const Color(0xFFF9F9F9) : null;
}

class FeedNavItem extends HomeNavItem {
  FeedNavItem()
      : super(
          iconBuilder: (isActive) => Icon(
            Icons.home_outlined,
            color: HomeNavItem._getIconColor(isActive),
          ),
          routePath: 'feed',
        );
}

class ExpenseManagerItem extends HomeNavItem {
  ExpenseManagerItem()
      : super(
          iconBuilder: (isActive) => Icon(
            Icons.account_balance_outlined,
            color: HomeNavItem._getIconColor(isActive),
          ),
          routePath: 'expense_manager',
        );
}
