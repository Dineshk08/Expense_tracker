import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:kommunicate_flutter/kommunicate_flutter.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

// ignore_for_file: must_be_immutable
class MenubarDraweritem extends StatelessWidget {
  MenubarDraweritem({Key? key}) : super(key: key);
  
  TextEditingController contactusoneController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Drawer(
        child: Container(
            width: getHorizontalSize(324),
            padding: getPadding(left: 18, top: 22, right: 18, bottom: 22),
            decoration: AppDecoration.outlineBlack,
            child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  CustomImageView(
                      svgPath: ImageConstant.imgMenu,
                      height: getVerticalSize(25),
                      width: getHorizontalSize(40)),
                  Container(
                      margin: getMargin(left: 1, top: 36, right: 28),
                      padding:
                          getPadding(left: 13, top: 16, right: 13, bottom: 16),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgHome,
                            height: getVerticalSize(33),
                            width: getHorizontalSize(35),
                            margin: getMargin(top: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtHomepage(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 24, top: 5),
                                child: Text("Home Page",
                                    style: CustomTextStyles.titleLargeJost)))
                      ])),
                  Container(
                      margin: getMargin(top: 16, right: 28),
                      padding:
                          getPadding(left: 14, top: 15, right: 14, bottom: 15),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMoneybagrupee,
                                height: getVerticalSize(33),
                                width: getHorizontalSize(38),
                                margin: getMargin(top: 6)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtAlltransactions(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 13, top: 6, bottom: 3),
                                    child: Text("All Transactions",
                                        style:
                                            CustomTextStyles.titleLargeJost)))
                          ])),
                  Container(
                      margin: getMargin(left: 1, top: 16, right: 28),
                      padding: getPadding(all: 13),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIconclouds,
                                height: getVerticalSize(37),
                                width: getHorizontalSize(38),
                                margin: getMargin(top: 2)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtTips(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 44, top: 8, bottom: 2),
                                    child: Text("Tips",
                                        style:
                                            CustomTextStyles.titleLargeJost)))
                          ])),
                  Container(
                      margin: getMargin(left: 1, top: 17, right: 28),
                      padding:
                          getPadding(left: 14, top: 12, right: 14, bottom: 12),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgIconprofile,
                                height: getVerticalSize(40),
                                width: getHorizontalSize(29),
                                margin: getMargin(bottom: 2)),
                            GestureDetector(
                                onTap: () async {
                                  dynamic conversationObject = {
                                    'appId':
                                        '209075f63617a9e9d560ded7699a23a76',
                                  };

                                  KommunicateFlutterPlugin.buildConversation(
                                          conversationObject)
                                      .then(
                                    (clientConversationId) {
                                      print("Conversation builder success : " +
                                          clientConversationId.toString());
                                    },
                                  ).catchError(
                                    (error) {
                                      print(
                                        "Conversation builder error : " +
                                            error.toString(),
                                      );
                                    },
                                  );
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 7, top: 8, bottom: 7),
                                    child: Text("Financial Assistant ",
                                        style:
                                            CustomTextStyles.titleMediumJost)))
                          ])),
                  Container(
                      margin: getMargin(left: 1, top: 16, right: 28),
                      padding:
                          getPadding(left: 17, top: 18, right: 17, bottom: 18),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(mainAxisSize: MainAxisSize.max, children: [
                        CustomImageView(
                            svgPath: ImageConstant.imgQuestion,
                            height: getVerticalSize(27),
                            width: getHorizontalSize(26),
                            margin: getMargin(top: 2, bottom: 1)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtFaq(context);
                            },
                            child: Padding(
                                padding: getPadding(left: 57, top: 1),
                                child: Text("FAQ",
                                    style: CustomTextStyles.titleLargeJost)))
                      ])),
                  Container(
                      margin: getMargin(left: 1, top: 16, right: 28),
                      padding:
                          getPadding(left: 19, top: 15, right: 19, bottom: 15),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgUser,
                                height: getVerticalSize(35),
                                width: getHorizontalSize(26),
                                margin: getMargin(bottom: 1)),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtInvestment(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 22, top: 5, bottom: 1),
                                    child: Text("Investment ",
                                        style:
                                            CustomTextStyles.titleLargeJost)))
                          ])),
                  Container(
                margin: getMargin(top: 14, right: 28),
                padding: getPadding(left: 19, top: 15, right: 19, bottom: 15),
                decoration: AppDecoration.outlineBlack900
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgCallPrimary,
                          height: getVerticalSize(35),
                          width: getHorizontalSize(26),
                          margin: getMargin(bottom: 1)),
                     GestureDetector(
                                onTap: () {
                                  onTapcontactus(context);
                                },
                                child: Padding(
                          padding: getPadding(left: 22, top: 5, bottom: 1),
                          child: Text("Contact Us ",
                              style:
                                  CustomTextStyles.titleLargeJost)))
                    ])),
                 Container(
                      margin: getMargin(top: 16, right: 28),
                      padding:
                          getPadding(left: 14, top: 15, right: 14, bottom: 15),
                      decoration: AppDecoration.outlineBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder20),
                      child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgMoneybagbitcoin,
                                height: getVerticalSize(33),
                                width: getHorizontalSize(38),
                                margin: getMargin(top: 6)),
                            GestureDetector(
                                onTap: () {
                                  nn(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(left: 13, top: 6, bottom: 3),
                                    child: Text("Crypto",
                                        style:
                                            CustomTextStyles.titleLargeJost)))
                          ])),
                ])));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homepageScreen.
  onTapTxtHomepage(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the allTransactionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the allTransactionsScreen.
  onTapTxtAlltransactions(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.allTransactionsScreen);
  }

  /// Navigates to the tipsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the tipsScreen.
  onTapTxtTips(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.tipsScreen);
  }

  onTapcontactus(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.contactUsScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the faqScreen.
  onTapTxtFaq(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the investmentsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the investmentsScreen.
  onTapTxtInvestment(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.investmentsScreen);
  }
  nn(BuildContext context) async {
    var url = 'https://guileless-daifuku-7f4772.netlify.app/';
    if (!await launch(url)) {
      throw 'Could not launch https://guileless-daifuku-7f4772.netlify.app/';
    }
  }
}
