import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeAbhayaLibreBluegray90001 =>
      theme.textTheme.bodyLarge!.abhayaLibre.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeAbhayaLibrePrimary =>
      theme.textTheme.bodyLarge!.abhayaLibre.copyWith(
        color: theme.colorScheme.primary,
      );
  static get bodyLargeBluegray90001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray90001,
      );
  static get bodyLargeGray400 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray400,
      );
  static get bodyMediumAbhayaLibre => theme.textTheme.bodyMedium!.abhayaLibre;
  static get bodyMediumAbhayaLibre_1 => theme.textTheme.bodyMedium!.abhayaLibre;
  static get bodySmall10 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallChivoBluegray500 =>
      theme.textTheme.bodySmall!.chivo.copyWith(
        color: appTheme.blueGray500,
      );
  static get bodySmallLight => theme.textTheme.bodySmall!.copyWith(
        fontSize: 10.fSize,
        fontWeight: FontWeight.w300,
      );
  static get bodySmallLightgreenA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreenA700,
      );
  static get bodySmallRed800 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.red800,
      );
  static get bodySmallRedA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.redA700,
      );
  // Headline text style
  static get headlineSmallGray400 => theme.textTheme.headlineSmall!.copyWith(
        color: appTheme.gray400,
      );
  static get headlineSmallInterGray5001 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.gray5001,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInterWhiteA700 =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 25.fSize,
        fontWeight: FontWeight.w600,
      );
  // Inter text style
  static get interBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  static get interBlack900SemiBold => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interBlack900SemiBold6 => TextStyle(
        color: appTheme.black900,
        fontSize: 6.fSize,
        fontWeight: FontWeight.w600,
      ).inter;
  static get interBluegray500 => TextStyle(
        color: appTheme.blueGray500,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w500,
      ).inter;
  // Label text style
  static get labelLargeWhiteA700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get labelMediumBlack900 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get labelMediumBlack900Medium => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumPrimary => theme.textTheme.labelMedium!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelMediumWhiteA700 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w600,
      );
  static get labelMediumWhiteA700ExtraBold =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
        fontWeight: FontWeight.w800,
      );
  static get labelMediumWhiteA700_1 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  // Title text style
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontSize: 18.fSize,
        fontWeight: FontWeight.w700,
      );
  static get titleMediumCabin => theme.textTheme.titleMedium!.cabin.copyWith(
        fontSize: 17.fSize,
      );
  static get titleMediumGray5001 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray5001,
        fontSize: 18.fSize,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 18.fSize,
        fontWeight: FontWeight.w800,
      );
  static get titleSmall14 => theme.textTheme.titleSmall!.copyWith(
        fontSize: 14.fSize,
      );
  static get titleSmallBlack900 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.black900,
        fontSize: 14.fSize,
      );
  static get titleSmallSecondaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontSize: 14.fSize,
        fontWeight: FontWeight.w600,
      );
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get abhayaLibre {
    return copyWith(
      fontFamily: 'Abhaya Libre',
    );
  }

  TextStyle get cabin {
    return copyWith(
      fontFamily: 'Cabin',
    );
  }

  TextStyle get actor {
    return copyWith(
      fontFamily: 'Actor',
    );
  }

  TextStyle get chivo {
    return copyWith(
      fontFamily: 'Chivo',
    );
  }
}
