import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get headlineSmallMedium => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallInter => theme.textTheme.titleSmall!.inter;
  static get bodyMediumErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumErrorContainer_1 => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodyMediumJost => theme.textTheme.bodyMedium!.jost;
  static get bodyMediumJostBlack900 =>
      theme.textTheme.bodyMedium!.jost.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w400,
      );
  static get bodyMediumRegular => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Display text style
  static get displayMediumJost => theme.textTheme.displayMedium!.jost.copyWith(
        fontWeight: FontWeight.w600,
      );
  // Headline text style
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineLargeRed300 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.red300.withOpacity(0.7),
      );
  static get headlineSmallBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallInter =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get headlineSmallInterBold =>
      theme.textTheme.headlineSmall!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineSmallSemiBold => theme.textTheme.headlineSmall!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get headlineSmall_1 => theme.textTheme.headlineSmall!;
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBold_1 => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeGray70001 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeGray70003 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70003,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeJost => theme.textTheme.titleLarge!.jost;
  static get titleLargeJostExtraBold =>
      theme.textTheme.titleLarge!.jost.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleLargeJostMedium => theme.textTheme.titleLarge!.jost.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleLargeJostOnPrimaryContainer =>
      theme.textTheme.titleLarge!.jost.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleLargeOnErrorContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainerBold =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleLargeOnPrimaryContainer_1 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeOnPrimaryContainer_2 =>
      theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumGray70002 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray70002,
      );
  static get titleMediumInriaSans =>
      theme.textTheme.titleMedium!.inriaSans.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleMediumJost => theme.textTheme.titleMedium!.jost.copyWith(
        fontSize: getFontSize(
          19,
        ),
      );
  static get titleMediumOnPrimaryContainer =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleMediumOnPrimaryContainerBold =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  static get titleMediumOnPrimaryContainer_1 =>
      theme.textTheme.titleMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodyMediumGray800 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray800,
        fontSize: getFontSize(
          13,
        ),
      );
  static get titleLargeInter => theme.textTheme.titleLarge!.inter.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get bodyMediumOnPrimaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallGray70001 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
        fontWeight: FontWeight.w500,
      );
  static get titleSmallGray70001_1 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70001,
      );
  static get titleSmallGray70003 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70003,
      );
  static get titleLargeInterGray700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterGray70001 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.gray70001,
      );
  static get titleLargeInterWhiteA700 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeWhiteA700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w500,
      );
  static get bodyMediumLight => theme.textTheme.bodyMedium!.copyWith(
        fontWeight: FontWeight.w300,
      );
  static get titleSmallJost => theme.textTheme.titleSmall!.jost.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium15 => theme.textTheme.titleSmall!.copyWith(
        fontSize: getFontSize(
          15,
        ),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleSmallOnPrimaryContainer15 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontSize: getFontSize(
          15,
        ),
      );
  static get titleSmallOnPrimaryContainerMedium =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        fontWeight: FontWeight.w500,
      );
  static get titleSmallOnPrimaryContainer_1 =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get titleLargeBlack900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900Bold => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );
  static get titleLargeBlack900_1 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeBlack900_2 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.black900,
      );
  
  static get titleLargeGray700 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray700,
        fontWeight: FontWeight.w700,
      );
  
  static get titleLargeGray70002 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.gray70002,
      );
  
  static get titleLargeJostBlack900 =>
      theme.textTheme.titleLarge!.jost.copyWith(
        color: appTheme.black900,
      );
  static get titleLargeJostBlack900ExtraBold =>
      theme.textTheme.titleLarge!.jost.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w800,
      );
  static get titleLargeJostBlack900Medium =>
      theme.textTheme.titleLarge!.jost.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w500,
      );
  
  static get titleLargePrimaryContainer => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  
  
  static get titleSmallGray700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray700,
      );
  
 
  static get titleSmallGray70002 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70002,
      );
  static get titleSmallGray70002Medium => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.gray70002,
        fontWeight: FontWeight.w500,
      );
 
  // Title text style
  static get titleLargePrimary => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
      );
  static get titleLargePrimaryExtraBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w800,
      );
  static get titleLargePrimarySemiBold => theme.textTheme.titleLarge!.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontWeight: FontWeight.w600,
      );
  
  static get titleMediumJostPrimary =>
      theme.textTheme.titleMedium!.jost.copyWith(
        color: theme.colorScheme.primary.withOpacity(1),
        fontSize: getFontSize(
          19,
        ),
        fontWeight: FontWeight.w600,
      );
  
  static get titleSmallInterWhiteA700Bold =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w700,
      );
  static get titleSmallInter_1 => theme.textTheme.titleSmall!.inter;
}

extension on TextStyle {
  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get jost {
    return copyWith(
      fontFamily: 'Jost',
    );
  }

  TextStyle get inriaSans {
    return copyWith(
      fontFamily: 'Inria Sans',
    );
  }
}
