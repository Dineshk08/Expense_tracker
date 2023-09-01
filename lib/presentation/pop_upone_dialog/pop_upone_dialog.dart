import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class PopUponeDialog extends StatelessWidget {
  const PopUponeDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Container(
      width: getHorizontalSize(328),
      padding: getPadding(
        left: 8,
        top: 10,
        right: 8,
        bottom: 10,
      ),
      decoration: AppDecoration.fillBluegray100,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: getPadding(
                top: 5,
                right: 40,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    height: getVerticalSize(16),
                    width: getHorizontalSize(15),
                    margin: getMargin(
                      top: 119,
                      bottom: 37,
                    ),
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        getHorizontalSize(8),
                      ),
                      border: Border.all(
                        color: theme.colorScheme.onError,
                        width: getHorizontalSize(6),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: getVerticalSize(172),
                    width: getHorizontalSize(183),
                    child: Stack(
                      alignment: Alignment.centerLeft,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgPolygon1,
                          height: getVerticalSize(75),
                          width: getHorizontalSize(74),
                          alignment: Alignment.bottomLeft,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                            margin: getMargin(
                              left: 16,
                            ),
                            padding: getPadding(
                              top: 13,
                              bottom: 13,
                            ),
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: fs.Svg(
                                  ImageConstant.imgGroup134,
                                ),
                                fit: BoxFit.cover,
                              ),
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: getVerticalSize(25)),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClock,
                                      height: getVerticalSize(18),
                                      width: getHorizontalSize(25),
                                      margin: getMargin(
                                        bottom: 4,
                                      ),
                                    ),
                                    CustomImageView(
                                      svgPath: ImageConstant.imgClock,
                                      height: getVerticalSize(18),
                                      width: getHorizontalSize(25),
                                      margin: getMargin(
                                        left: 25,
                                        top: 4,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: getVerticalSize(16)),
                                CustomImageView(
                                  svgPath: ImageConstant.imgClockBlueGray100,
                                  height: getVerticalSize(15),
                                  width: getHorizontalSize(24),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Container(
                                    height: getVerticalSize(21),
                                    width: getHorizontalSize(110),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.onError
                                          .withOpacity(0.2),
                                      borderRadius: BorderRadius.circular(
                                        getHorizontalSize(10),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Container(
                            width: getHorizontalSize(183),
                            margin: getMargin(
                              top: 42,
                              bottom: 76,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: getVerticalSize(21),
                                  width: getHorizontalSize(106),
                                  margin: getMargin(
                                    top: 33,
                                  ),
                                  decoration: BoxDecoration(
                                    color: theme.colorScheme.onError
                                        .withOpacity(0.2),
                                    borderRadius: BorderRadius.circular(
                                      getHorizontalSize(10),
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  svgPath: ImageConstant.imgMditick,
                                  height: getVerticalSize(36),
                                  width: getHorizontalSize(38),
                                  margin: getMargin(
                                    bottom: 18,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Container(
                            height: getVerticalSize(21),
                            width: getHorizontalSize(93),
                            margin: getMargin(
                              right: 30,
                              bottom: 55,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onError.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(10),
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMditick,
                          height: getVerticalSize(36),
                          width: getHorizontalSize(38),
                          alignment: Alignment.topLeft,
                        ),
                        Align(
                          alignment: Alignment.topRight,
                          child: Container(
                            height: getSize(16),
                            width: getSize(16),
                            margin: getMargin(
                              right: 41,
                            ),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                getHorizontalSize(8),
                              ),
                              border: Border.all(
                                color: theme.colorScheme.onError,
                                width: getHorizontalSize(6),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: getVerticalSize(30)),
          Text(
            "Woo hoo!!",
            style: theme.textTheme.displayMedium,
          ),
          SizedBox(height: getVerticalSize(41)),
          Text(
            "Congrats! we have successfully     ",
            style: CustomTextStyles.titleLargeGray70001,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: getPadding(
                left: 98,
                top: 1,
              ),
              child: Text(
                "Registered ",
                style: CustomTextStyles.titleLargeGray70001,
              ),
            ),
          ),
          SizedBox(height: getVerticalSize(57)),
          CustomElevatedButton(
            onTap: () {
              navigatetowelcome(context);
            },
            width: getHorizontalSize(179),
            text: "Done",
            buttonStyle: CustomButtonStyles.fillGreenAFc,
            buttonTextStyle: CustomTextStyles.headlineLargeOnPrimaryContainer,
          ),
        ],
      ),
    );
  }
}
navigatetowelcome(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.welcomePageScreen);
  }