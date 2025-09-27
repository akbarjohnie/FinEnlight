import 'dart:ui';

abstract base class AppColors {
  static const Color white = Color(0xFFFFFFFF);
  static const Color transparent = Color(0x00000000);
  static const Color eerieBlack = Color(0xFF1C1C1C);

  /// GRAY
  static const Color platinum = Color(0xFFEAEAEA);
  static const Color alabaster = Color(0xFFF8F8F8);
  static const Color gainsboro = Color(0xFFF1F1F1);
  static const Color galleryGray = Color(0xFFEFEFEF);
  static const Color dimGray = Color(0xFF868686);

  /// BLUE
  static const Color cornflowerBlue = Color(0xFF537CE8);
  static const Color aliceBlue = Color(0xFFEEF2FD);

  /// RED
  static const Color bittersweet = Color(0xFFFC6B58);

  static const Color linen = Color(0xFFFFF0EE);

  /// YELLOW
  static const Color sunglow = Color(0xFFFFD922);

  static const Color oldLace = Color(0xFFFFFBE9);

  static final alabasterOpacity50 = alabaster.withValues(alpha: 0.50);
  static final cornflowerBlueOpacity10 = cornflowerBlue.withValues(alpha: 0.10);
  static final bittersweetOpacity10 = bittersweet.withValues(alpha: 0.10);
  static final sunglowOpacity10 = sunglow.withValues(alpha: 0.10);
}
