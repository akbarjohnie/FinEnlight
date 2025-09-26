import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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

  ColorFilter? getIconFilter(bool isActive) => isActive
      ? const ColorFilter.mode(
          Color(0xFFF9F9F9),
          BlendMode.srcIn,
        )
      : null;
}

class FeedNavItem extends HomeNavItem {
  FeedNavItem()
      : super(
          iconBuilder: (isActive) => Icon(
            Icons.home_outlined,
          ),
          // SvgPicture.asset(
          // R.,
          //   colorFilter: getIconFilter(isActive),
          // ),
          routePath: 'feed',
        );
}

class ExpenseManagerItem extends HomeNavItem {
  ExpenseManagerItem()
      : super(
          iconBuilder: (isActive) => Icon(
            Icons.account_balance_outlined,
          ),
          // SvgPicture.asset(
          //   R.,
          //   colorFilter: getIconFilter(isActive),
          //   matchTextDirection: true,
          // ),
          routePath: 'expense_manager',
        );
}
