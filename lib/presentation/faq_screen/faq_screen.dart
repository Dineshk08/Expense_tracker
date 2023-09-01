import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';
import '../menubar_draweritem/menubar_draweritem.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';

class FaqScreen extends StatelessWidget {
  FaqScreen({Key? key})
      : super(
          key: key,
        );
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: MenubarDraweritem(),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup1009,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: SingleChildScrollView(
              padding: getPadding(
                top: 17,
              ),
              child: Padding(
                padding: getPadding(
                  bottom: 82,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    CustomAppBar(
                      height: getVerticalSize(42),
                      leadingWidth: getHorizontalSize(60),
                      leading: AppbarImage(
                          svgPath: ImageConstant.imgMenu,
                          margin: getMargin(left: 20, top: 8, bottom: 9),
                          onTap: () {
                            navigatetomenu(context);
                          }),
                    ),
                    Padding(
                      padding: getPadding(
                        left: 21,
                        top: 41,
                      ),
                      child: Text(
                        "Any questions?",
                        style: CustomTextStyles.headlineSmallInter,
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 24,
                              ),
                              padding: getPadding(
                                left: 3,
                                top: 37,
                                right: 3,
                                bottom: 37,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Container(
                                width: getHorizontalSize(291),
                                margin: getMargin(
                                  top: 6,
                                  right: 13,
                                ),
                                child: Text(
                                  "The app considers your financial inputs, goals, and preferences to offer tailored advice and strategies that align with your individual situation.",
                                  maxLines: 4,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: getHorizontalSize(273),
                              child: Text(
                                "How does the app provide personalized guidance?",
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.center,
                                style: theme.textTheme.titleMedium,
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x231,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 17,
                              top: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: getHorizontalSize(386),
                      margin: getMargin(
                        left: 4,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 42,
                                right: 32,
                              ),
                              padding: getPadding(
                                left: 8,
                                top: 2,
                                right: 8,
                                bottom: 2,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: getHorizontalSize(273),
                                    margin: getMargin(
                                      left: 6,
                                      right: 14,
                                    ),
                                    child: Text(
                                      "How often should I update my financial information in the app?",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(291),
                                    margin: getMargin(
                                      top: 6,
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      "egular updates are beneficial for accurate advice. We recommend updating your financial data whenever there are significant changes in your income, expenses, or financial goals.",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: getHorizontalSize(386),
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x231,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 10,
                              top: 8,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: getHorizontalSize(388),
                      margin: getMargin(
                        top: 14,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Container(
                              margin: getMargin(
                                left: 44,
                                right: 32,
                              ),
                              padding: getPadding(
                                left: 8,
                                top: 5,
                                right: 8,
                                bottom: 5,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    width: getHorizontalSize(293),
                                    margin: getMargin(
                                      top: 4,
                                    ),
                                    child: Text(
                                      "Will the app help me learn about personal finance?",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(235),
                                    margin: getMargin(
                                      left: 25,
                                      top: 8,
                                      right: 32,
                                    ),
                                    child: Text(
                                      "Yes, the app provides educational articles and resources to enhance your financial literacy and empower you to make better financial decisions.",
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: getHorizontalSize(388),
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 11,
                              top: 6,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 21,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 26,
                              ),
                              padding: getPadding(
                                left: 2,
                                top: 10,
                                right: 2,
                                bottom: 10,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Container(
                                    width: getHorizontalSize(298),
                                    margin: getMargin(
                                      left: 9,
                                    ),
                                    child: Text(
                                      "Can I set up and track financial goals in the app?",
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                  Container(
                                    width: getHorizontalSize(281),
                                    margin: getMargin(
                                      left: 16,
                                      top: 12,
                                      right: 9,
                                      bottom: 6,
                                    ),
                                    child: Text(
                                      "Absolutely! The app allows you to set specific financial goals, track your progress, and receive recommendations on how to achieve them.",
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: theme.textTheme.titleMedium,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 17,
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 10,
                      ),
                      child: Stack(
                        alignment: Alignment.topLeft,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 17,
                              top: 17,
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 27,
                              ),
                              padding: getPadding(
                                left: 5,
                                top: 12,
                                right: 5,
                                bottom: 12,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: SizedBox(
                                width: getHorizontalSize(302),
                                child: Text(
                                  "What features does the app offer?\n\nThe app offers budgeting tools, expense tracking, goal setting, educational content, personalized financial guidance, and more to empower users in making informed financial decisions.",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 24,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 26,
                              ),
                              padding: getPadding(
                                left: 17,
                                top: 6,
                                right: 17,
                                bottom: 6,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Container(
                                width: getHorizontalSize(272),
                                margin: getMargin(
                                  right: 4,
                                  bottom: 9,
                                ),
                                child: Text(
                                  "Is my financial data safe in the app?\n\n Yes, we prioritize data security. Your financial information is encrypted and stored securely, following industry standards and best practices to ensure your privacy.",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 17,
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 12,
                      ),
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 26,
                              ),
                              padding: getPadding(
                                left: 2,
                                top: 6,
                                right: 2,
                                bottom: 6,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Container(
                                width: getHorizontalSize(305),
                                margin: getMargin(
                                  left: 2,
                                  bottom: 12,
                                ),
                                child: Text(
                                  "Can the app help with investing my money?\n\nAbsolutely! The app offers investment analysis and suggestions based on your financial goals and risk tolerance, assisting you in making informed investment decisions.",
                                  maxLines: 6,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 17,
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 13,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 24,
                              ),
                              padding: getPadding(
                                left: 21,
                                right: 21,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Container(
                                width: getHorizontalSize(267),
                                margin: getMargin(
                                  bottom: 21,
                                ),
                                child: Text(
                                  "What is the purpose of the FinEx app?\n\nThe FinEx app is designed to help individuals and families improve their financial status by providing tools, resources, and guidance for effective financial management.",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 19,
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: getVerticalSize(159),
                      width: double.maxFinite,
                      margin: getMargin(
                        top: 6,
                      ),
                      child: Stack(
                        alignment: Alignment.centerRight,
                        children: [
                          Align(
                            alignment: Alignment.topCenter,
                            child: SizedBox(
                              width: double.maxFinite,
                              child: Divider(),
                            ),
                          ),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Container(
                              margin: getMargin(
                                right: 22,
                              ),
                              padding: getPadding(
                                left: 4,
                                top: 1,
                                right: 4,
                                bottom: 1,
                              ),
                              decoration:
                                  AppDecoration.gradientRedToRed.copyWith(
                                borderRadius:
                                    BorderRadiusStyle.customBorderBL20,
                              ),
                              child: Container(
                                width: getHorizontalSize(304),
                                margin: getMargin(
                                  bottom: 19,
                                ),
                                child: Text(
                                  " Is the app suitable for students or young adults?\nYes, the app is designed to be user-friendly for individuals of all ages and financial backgrounds, including students and young adults who want to manage their finances effectively.",
                                  maxLines: 7,
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.center,
                                  style: theme.textTheme.titleMedium,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgPlusBlack90020x23,
                            height: getVerticalSize(20),
                            width: getHorizontalSize(23),
                            alignment: Alignment.topLeft,
                            margin: getMargin(
                              left: 21,
                              top: 10,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
