import 'package:fin_enlight/core/core.dart';
import 'package:flutter/material.dart';

class NumpadElement extends StatelessWidget {
  const NumpadElement({
    required this.numCount,
    required this.onTap,
    super.key,
  });

  final int numCount;
  final ValueChanged<int> onTap;

  static const _borderRadius = BorderRadius.all(Radius.circular(64));

  @override
  Widget build(BuildContext context) {
    return Material(
      borderRadius: _borderRadius,
      shadowColor: AppColors.transparent,
      color: AppColors.cornflowerBlueOpacity10,
      child: InkWell(
        borderRadius: _borderRadius,
        highlightColor: AppColors.aliceBlue,
        onTap: () => onTap.call(numCount),
        child: SizedBox.square(
          child: Center(
            child: Text(
              numCount.toString(),
              style: const TextStyle(
                fontSize: 20,
                color: AppColors.eerieBlack,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
