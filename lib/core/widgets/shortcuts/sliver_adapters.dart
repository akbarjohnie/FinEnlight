import 'package:fin_enlight/core/widgets/widgets.dart';
import 'package:flutter/material.dart';

class SliverAdapter extends StatelessWidget {
  const SliverAdapter({
    required this.child,
    this.padding = P.zero,
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: child,
      ),
    );
  }
}

class SliverAspectAdapter extends StatelessWidget {
  const SliverAspectAdapter({
    required this.child,
    this.padding = P.zero,
    this.aspectRatio = 1.0,
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: padding,
        child: AspectRatio(
          aspectRatio: aspectRatio,
          child: child,
        ),
      ),
    );
  }
}

class AspectAdapter extends StatelessWidget {
  const AspectAdapter({
    required this.child,
    this.padding = P.zero,
    this.aspectRatio = 1.0,
    super.key,
  });

  final Widget child;
  final EdgeInsets padding;
  final double aspectRatio;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: AspectRatio(
        aspectRatio: aspectRatio,
        child: child,
      ),
    );
  }
}

class SliverSizedBox extends StatelessWidget {
  const SliverSizedBox({
    this.child = const SizedBox.shrink(),
    this.width = 0.0,
    this.height = 0.0,
    super.key,
  });

  final Widget child;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: SizedBox(
        width: width,
        height: height,
        child: child,
      ),
    );
  }
}

class SliverLoading extends StatelessWidget {
  const SliverLoading({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SliverFillRemaining(
      hasScrollBody: false,
      child: Center(child: CircularProgressIndicator()),
    );
  }
}
