import 'dart:ui';

abstract base class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color appBlack = Color(0xFF1C1C1C);

  static const Color gray = Color(0xFFEAEAEA);
  static const Color gray_2 = Color(0xFFF8F8F8);
  static const Color gray_3 = Color(0xFFF1F1F1);
  static const Color gray_4 = Color(0xFFEFEFEF);
  static const Color darkGray = Color(0xFF868686);

  static const Color appBlue = Color(0xFF537CE8);
  static const Color skyBlue = Color(0xFFEEF2FD);

  static const Color appRed = Color(0xFFFC6B58);

  static const Color palePink = Color(0xFFFFF0EE);
  static const Color appYellow = Color(0xFFFFD922);

  static const Color paleYellow = Color(0xFFFFFBE9);

  static final g2opacity_50 = gray_2.withValues(alpha: 0.50);
  static final appBlueOpacity_10 = appBlue.withValues(alpha: 0.10);
  static final appRedOpacity_10 = appRed.withValues(alpha: 0.10);
  static final appYellowOpacity_10 = appYellow.withValues(alpha: 0.10);
}
