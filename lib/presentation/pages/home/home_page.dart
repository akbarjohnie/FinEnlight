import 'package:auto_route/auto_route.dart';
import 'package:collection/collection.dart';
import 'package:fin_enlight/core/core.dart';
import 'package:fin_enlight/presentation/pages/home/widgets/navigation_items.dart';
import 'package:flutter/material.dart';

@RoutePage()
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final ValueNotifier<int> _selectedNavNotifier = ValueNotifier(0);
  late List<String> _localHistory = List.of([context.router.currentPath]);

  Set<String> get _navItemsPaths => navItems.map((i) => i.routePath).toSet();
  static const _maxHistoryLength = 20;

  @override
  void dispose() {
    _selectedNavNotifier.dispose();
    super.dispose();
  }

  List<HomeNavItem> get navItems => [
        FeedNavItem(),
        ExpenseManagerItem(),
      ];

  VoidCallback _getOnTapBottomBarItem(int index) => () {
        final currSelectedPath = navItems[_selectedNavNotifier.value].routePath;
        return navItems[index].navigate(context, selectedPath: currSelectedPath);
      };

  AutoRouter get _outlet => const AutoRouter();

  void _handleUpdateTab() {
    //TODO: использовать везде navigateTo
    final currRoutePath = context.router.currentPath;
    if (_localHistory.contains(currRoutePath)) {
      _localHistory = _localHistory.sublist(0, _localHistory.indexOf(currRoutePath));
    }
    _localHistory.add(currRoutePath);
    if (_localHistory.length > _maxHistoryLength) {
      _localHistory.removeAt(0);
    }

    final navPathsIndexed = _navItemsPaths.indexed.toList();
    for (final path in _localHistory.toList().reversed) {
      final currNavPath = navPathsIndexed.firstWhereOrNull((p) => path.contains(p.$2));
      if (currNavPath != null) {
        _selectedNavNotifier.value = currNavPath.$1;
        return;
      }
    }
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    if (!mounted) return;
    RouterScope.of(context).controller.navigationHistory.addListener(_handleUpdateTab);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.eerieBlack,
      body: _outlet,
      bottomNavigationBar: Padding(
        padding: P(horizontal: context.isSmall ? 12 : 24),
        child: SafeArea(
          child: SizedBox(
            height: 50,
            child: ValueListenableBuilder(
              valueListenable: _selectedNavNotifier,
              builder: (_, activeIndex, __) => Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ...navItems.mapIndexed(
                    (index, item) => TextButton(
                      onPressed: _getOnTapBottomBarItem(index),
                      child: item.iconBuilder(activeIndex == index),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
