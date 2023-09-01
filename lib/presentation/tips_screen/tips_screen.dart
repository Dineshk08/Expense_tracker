import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class TipsScreen extends StatelessWidget {
  const TipsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgHomepage),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(16)),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(
                                          left: 12, right: 12, bottom: 112),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                svgPath: ImageConstant.imgMenu,
                                                height: getVerticalSize(25),
                                                width: getHorizontalSize(40)),
                                            Container(
                                                margin: getMargin(
                                                    left: 3, top: 52, right: 4),
                                                padding: getPadding(
                                                    left: 18,
                                                    top: 13,
                                                    right: 18,
                                                    bottom: 13),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                       GestureDetector(
                                                          onTap: () {
                                                            onTapTxtReversebudgetin(
                                                                context);
                                                          },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 87,
                                                              top: 14),
                                                          child: Text(
                                                              "50/30/20",
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  13),
                                                          margin: getMargin(
                                                              top: 19,
                                                              bottom: 12))
                                                    ])),
                                            Container(
                                                margin:
                                                    getMargin(left: 6, top: 16),
                                                padding: getPadding(
                                                    left: 24,
                                                    top: 19,
                                                    right: 24,
                                                    bottom: 19),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtZerobasedbudget(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 32,
                                                                      top: 2),
                                                              child: Text(
                                                                  "Zero-based Budgeting",
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightBlack900,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          margin: getMargin(
                                                              left: 32,
                                                              top: 11,
                                                              bottom: 9))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    top: 20, right: 7),
                                                padding: getPadding(
                                                    left: 17,
                                                    top: 18,
                                                    right: 17,
                                                    bottom: 18),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtReversebudgetin(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 53,
                                                                      top: 2),
                                                              child: Text(
                                                                  "Reverse Budgeting",
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightBlack90017x11,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          margin: getMargin(
                                                              top: 8,
                                                              bottom: 11))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 3, top: 15, right: 4),
                                                padding: getPadding(
                                                    left: 20,
                                                    top: 12,
                                                    right: 20,
                                                    bottom: 12),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtRuleofSeventyTw(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 89,
                                                                      bottom:
                                                                          15),
                                                              child: Text(
                                                                  "Rule of 72",
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightBlack90017x11,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          margin: getMargin(
                                                              top: 15,
                                                              bottom: 15))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 3, top: 23, right: 4),
                                                padding: getPadding(
                                                    top: 15, bottom: 15),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceAround,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtxyourannualinc(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      bottom:
                                                                          9),
                                                              child: Text(
                                                                  "2X Your Annual Income",
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowright17x11,
                                                          height:
                                                              getVerticalSize(
                                                                  17),
                                                          width:
                                                              getHorizontalSize(
                                                                  11),
                                                          margin: getMargin(
                                                              top: 9,
                                                              bottom: 17))
                                                    ])),
                                            Container(
                                                margin: getMargin(
                                                    left: 3, top: 14, right: 4),
                                                padding: getPadding(
                                                    left: 23,
                                                    top: 16,
                                                    right: 23,
                                                    bottom: 16),
                                                decoration: AppDecoration
                                                    .fillPrimary
                                                    .copyWith(
                                                        borderRadius:
                                                            BorderRadiusStyle
                                                                .roundedBorder37),
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .spaceBetween,
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment.end,
                                                    children: [
                                                      GestureDetector(
                                                          onTap: () {
                                                            onTapTxtTwentythousandf(
                                                                context);
                                                          },
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 92,
                                                                      top: 7),
                                                              child: Text(
                                                                  "20/4/10",
                                                                  style: theme
                                                                      .textTheme
                                                                      .headlineSmall))),
                                                      CustomImageView(
                                                          svgPath: ImageConstant
                                                              .imgArrowrightBlack90016x10,
                                                          height:
                                                              getVerticalSize(
                                                                  16),
                                                          width:
                                                              getHorizontalSize(
                                                                  10),
                                                          margin: getMargin(
                                                              top: 14,
                                                              bottom: 10))
                                                    ])),
                                            CustomElevatedButton(
                                                height: getVerticalSize(74),
                                                text: "Cash Only Budgeting",
                                                margin:
                                                    getMargin(left: 7, top: 20),
                                                rightIcon: Container(
                                                    margin: getMargin(left: 30),
                                                    child: CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgArrowrightBlack900)),
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimary,
                                                buttonTextStyle: theme
                                                    .textTheme.headlineSmall!,
                                                onTap: () {
                                                  onTapCashonly(context);
                                                })
                                          ]))))
                        ])))));
  }

  /// Navigates to the zeroBasedBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the zeroBasedBudgetingScreen.
  onTapTxtZerobasedbudget(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.zeroBasedBudgetingScreen);
  }
 onTapTxttewnty(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.twentyscreen);
  }
  /// Navigates to the reverseBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the reverseBudgetingScreen.
  onTapTxtReversebudgetin(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.reverseBudgetingScreen);
  }

  /// Navigates to the ruleOfSeventytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ruleOfSeventytwoScreen.
  onTapTxtRuleofSeventyTw(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.ruleOfSeventytwoScreen);
  }

  /// Navigates to the xYourAnnualIncomeoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the xYourAnnualIncomeoneScreen.
  onTapTxtxyourannualinc(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.xYourAnnualIncomeoneScreen);
  }

  /// Navigates to the ruleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ruleScreen.
  onTapTxtTwentythousandf(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.ruleScreen);
  }

  /// Navigates to the cashOnlyBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the cashOnlyBudgetingScreen.
  onTapCashonly(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.cashOnlyBudgetingScreen);
  }
}
