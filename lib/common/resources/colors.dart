import 'dart:ui';

abstract class AppColors {
  /// Primary app color
  /// "Base 1 / 0" in Figma
  /// primaryCollection 600
  static const primary = Color(0xFF3290FF);

  /// Dark primary app color
  /// "Base 1 / -15" in Figma
  /// primaryCollection 700
  static const primaryDark = Color(0xFF2A7AD9);

  /// Accent primary app color (buttons, active text)
  static const accent = Color(0xFF3290FF);

  /// Unified background color
  static const background = Color(0xFFF2F2F2);

  /// Surface primary color (for cards, modals, menu sheets)
  static const surface = Color(0xFFFFFFFF);

  /// Both for [primary] and [primaryDark]
  static const onPrimary = Color(0xFFFFFFFF);

  /// On [surface] color
  static const onSurface = Color(0xFF333333);

  /// On [background] color
  static const onBackground = Color(0xFF333333);

  /// Collection of primary colors
  ///
  /// Base 1 color Figma values:
  /// [100] is for +90
  /// [200] is for +80
  /// [300] is for +50
  /// [400] is for +25
  /// [500] is for +15
  /// [600] is for 0
  /// [700] is for -15
  /// [800] is for -25
  /// [900] is for -30
  static const Map<int, Color> primaryCollection = {
    100: Color(0xFFEAF4FF),
    200: Color(0xFFD6E9FF),
    300: Color(0xFF98C7FF),
    400: Color(0xFF65ACFF),
    500: Color(0xFF51A1FF),
    600: Color(0xFF3290FF),
    700: Color(0xFF2A7AD9),
    800: Color(0xFF256CBF),
    900: Color(0xFF2365B2),
  };

  /// Collection of all surface colors (white-black)
  /// Gray color Figma values:
  /// [100] is for 0
  /// [200] is for 05
  /// [300] is for 10
  /// [400] is for 20
  /// [500] is for 30
  /// [600] is for 50
  /// [700] is for 70
  /// [800] is for 80
  /// [900] is for 90
  static const Map<int, Color> surfaceCollection = {
    100: Color(0xFFFFFFFF),
    200: Color(0xFFF2F2F2),
    300: Color(0xFFE5E5E5),
    400: Color(0xFFCCCCCC),
    500: Color(0xFFB3B3B3),
    600: Color(0xFF808080),
    700: Color(0xFF4D4D4D),
    800: Color(0xFF333333),
    900: Color(0xFF1A1A1A),
  };
}
