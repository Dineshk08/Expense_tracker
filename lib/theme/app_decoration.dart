import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/core/app_export.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray300,
      );
  static BoxDecoration get fillBluegray100 => BoxDecoration(
        color: appTheme.blueGray100,
      );
  static BoxDecoration get fillBluegray600 => BoxDecoration(
        color: appTheme.blueGray600,
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray400,
      );
  static BoxDecoration get fill => BoxDecoration(
        color: appTheme.teal100,
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
      );
  static BoxDecoration get fillPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.primaryContainer,
      );


  static BoxDecoration get fillGray7001 => BoxDecoration(
        color: appTheme.gray7001.withOpacity(0.7),
      );
  static BoxDecoration get fillRed => BoxDecoration(
        color: appTheme.red300,
      );
  static BoxDecoration get fillRed200 => BoxDecoration(
        color: appTheme.red200,
      );
  static BoxDecoration get fillRed300 => BoxDecoration(
        color: appTheme.red300.withOpacity(0.7),
      );

  
  
  static BoxDecoration get fillErrorContainer => BoxDecoration(
        color: theme.colorScheme.errorContainer,
      );
  
  static BoxDecoration get fillSecondaryContainer => BoxDecoration(
        color: theme.colorScheme.secondaryContainer,
      );
  static BoxDecoration get fillSecondaryContainer1 => BoxDecoration(
        color: theme.colorScheme.secondaryContainer.withOpacity(0.7),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal100,
      );
  static BoxDecoration get fillWhiteA => BoxDecoration(
        color: appTheme.whiteA700,
      );
  

  // Gradient decorations
  static BoxDecoration get gradientRedToRed => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(0.5, 1),
          colors: [
            appTheme.red300,
            appTheme.red300.withOpacity(0.9),
            appTheme.red300.withOpacity(0),
          ],
        ),
      );

  // Outline decorations
  static BoxDecoration get outlineBlack => BoxDecoration(
        color: theme.colorScheme.primary,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack900 => BoxDecoration(
        color: appTheme.red300,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9001 => BoxDecoration();
  static BoxDecoration get outlineBlack9002 => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineBlack9003 => BoxDecoration(
        color: appTheme.black900,
        boxShadow: [
          BoxShadow(
            color: appTheme.black900.withOpacity(0.25),
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );

  static BoxDecoration get outlinePrimary => BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary1 => BoxDecoration(
        color: appTheme.teal100,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlinePrimary2 => BoxDecoration(
        color: theme.colorScheme.surfaceVariant,
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.primary,
            spreadRadius: getHorizontalSize(2),
            blurRadius: getHorizontalSize(2),
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
}

class BorderRadiusStyle {
  // Circle borders
  static BorderRadius get circleBorder70 => BorderRadius.circular(
        getHorizontalSize(70),
      );

  // Custom borders
  static BorderRadius get customBorderBL20 => BorderRadius.vertical(
        bottom: Radius.circular(getHorizontalSize(20)),
      );
  static BorderRadius get customBorderBL40 => BorderRadius.vertical(
        bottom: Radius.circular(getHorizontalSize(40)),
      );
  static BorderRadius get customBorderBR27 => BorderRadius.horizontal(
        right: Radius.circular(getHorizontalSize(26)),
      );
  static BorderRadius get customBorderLR20 => BorderRadius.horizontal(
        right: Radius.circular(getHorizontalSize(20)),
      );
  static BorderRadius get customBorderLR40 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(39)),
        topRight: Radius.circular(getHorizontalSize(40)),
        bottomLeft: Radius.circular(getHorizontalSize(39)),
        bottomRight: Radius.circular(getHorizontalSize(39)),
      );
  static BorderRadius get customBorderTL20 => BorderRadius.horizontal(
        left: Radius.circular(getHorizontalSize(20)),
      );
  static BorderRadius get customBorderTL24 => BorderRadius.only(
        topLeft: Radius.circular(getHorizontalSize(24)),
        bottomRight: Radius.circular(getHorizontalSize(24)),
      );

  // Rounded borders
  static BorderRadius get roundedBorder20 => BorderRadius.circular(
        getHorizontalSize(20),
      );
  static BorderRadius get roundedBorder24 => BorderRadius.circular(
        getHorizontalSize(24),
      );
  static BorderRadius get roundedBorder37 => BorderRadius.circular(
        getHorizontalSize(37),
      );
  static BorderRadius roundedBorder4 = BorderRadius.circular(
    getHorizontalSize(
      4,
    ),
  );
}



double get strokeAlignInside => BorderSide.strokeAlignInside;

double get strokeAlignCenter => BorderSide.strokeAlignCenter;

double get strokeAlignOutside => BorderSide.strokeAlignOutside;

