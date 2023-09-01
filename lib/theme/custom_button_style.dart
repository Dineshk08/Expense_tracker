import 'dart:ui';
import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillErrorContainer => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.errorContainer,
      );
  static ButtonStyle get fillGray => ElevatedButton.styleFrom(
        backgroundColor: appTheme.gray400,
      );
  static ButtonStyle get fillGreenAFc => ElevatedButton.styleFrom(
        backgroundColor: appTheme.greenA400Fc,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              35.00,
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              getHorizontalSize(
                37.00,
              ),
            ),
            topRight: Radius.circular(
              getHorizontalSize(
                38.00,
              ),
            ),
            bottomLeft: Radius.circular(
              getHorizontalSize(
                37.00,
              ),
            ),
            bottomRight: Radius.circular(
              getHorizontalSize(
                38.00,
              ),
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimaryTL10 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              10.00,
            ),
          ),
        ),
      );
  static ButtonStyle get fillPrimaryTL20 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.horizontal(
            left: Radius.circular(
              getHorizontalSize(
                20.00,
              ),
            ),
          ),
        ),
      );

  // Outline button style
  static ButtonStyle get outlineBlack => ElevatedButton.styleFrom(
        backgroundColor: appTheme.red300,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            getHorizontalSize(
              20.00,
            ),
          ),
        ),
        shadowColor: appTheme.black900.withOpacity(0.25),
        elevation: 4,
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
