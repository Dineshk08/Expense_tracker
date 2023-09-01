import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class QuestinareScreen extends StatelessWidget {
  const QuestinareScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage2,
                          height: getVerticalSize(173),
                          width: getHorizontalSize(282),
                          alignment: Alignment.centerLeft),
                      Container(
                          margin: getMargin(left: 12, top: 27, right: 19),
                          padding: getPadding(
                              left: 19, top: 11, right: 19, bottom: 11),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(242),
                                        margin: getMargin(left: 21, bottom: 20),
                                        child: Text(
                                            "What is your Financial\nKnowledge level ?",
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .headlineSmallSemiBold))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(16),
                                    margin: getMargin(
                                        left: 40, top: 25, bottom: 19))
                              ])),
                      Container(
                          margin: getMargin(left: 12, top: 28, right: 20),
                          padding: getPadding(
                              left: 22, top: 9, right: 22, bottom: 9),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(239),
                                        margin: getMargin(left: 11, bottom: 21),
                                        child: Text(
                                            "Do you have any debt \nor loans ?",
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .headlineSmallSemiBold))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(16),
                                    margin: getMargin(
                                        left: 47, top: 26, bottom: 19))
                              ])),
                      Container(
                          margin: getMargin(left: 12, top: 32, right: 20),
                          padding: getPadding(
                              left: 19, top: 6, right: 19, bottom: 6),
                          decoration: AppDecoration.fillPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderLR40),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Expanded(
                                    child: Container(
                                        width: getHorizontalSize(228),
                                        margin: getMargin(left: 8, bottom: 2),
                                        child: Text(
                                            "Have you Invested in\nsomething ?",
                                            maxLines: 8,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .headlineSmallSemiBold))),
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowdown,
                                    height: getVerticalSize(10),
                                    width: getHorizontalSize(16),
                                    margin: getMargin(
                                        left: 65, top: 25, bottom: 24))
                              ])),
                      Padding(
                          padding: getPadding(left: 19, top: 27, right: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomElevatedButton(
                                    height: getVerticalSize(75),
                                    width: getHorizontalSize(242),
                                    text: "What’s your Income",
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimaryTL20,
                                    buttonTextStyle:
                                        CustomTextStyles.headlineSmallSemiBold),
                                Container(
                                    margin: getMargin(left: 1),
                                    padding: getPadding(
                                        left: 17,
                                        top: 19,
                                        right: 17,
                                        bottom: 19),
                                    decoration: AppDecoration.fillBluegray100
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .customBorderLR20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: getVerticalSize(2)),
                                          SizedBox(
                                              width: getHorizontalSize(72),
                                              child: Text("Enter Your\nIncome",
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: CustomTextStyles
                                                      .titleSmallGray70001))
                                        ]))
                              ])),
                      CustomElevatedButton(
                          height: getVerticalSize(51),
                          text: "All Done!!!",
                          margin: getMargin(left: 44, top: 49, right: 57),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallInterBold,
                          onTap: () {
                            onTapAlldone(context);
                          },
                          alignment: Alignment.centerLeft),
                      SizedBox(height: getVerticalSize(10)),
                      CustomImageView(
                          imagePath: ImageConstant.imgImage3141x225,
                          height: getVerticalSize(150),
                          width: getHorizontalSize(231),
                          alignment: Alignment.centerRight)
                    ])))));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homepageScreen.
  onTapAlldone(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.homepageScreen, (route) => false);
  }
}
