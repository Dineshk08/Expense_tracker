import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomePageScreen extends StatelessWidget {
  const WelcomePageScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(height: getVerticalSize(2)),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: getVerticalSize(192),
                                width: getHorizontalSize(299),
                                alignment: Alignment.centerLeft),
                            Container(
                                width: getHorizontalSize(338),
                                margin: getMargin(left: 37, top: 29, right: 15),
                                padding: getPadding(
                                    left: 17, top: 15, right: 17, bottom: 15),
                                decoration: AppDecoration.fillBlueGray.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder20),
                                child: Container(
                                    width: getHorizontalSize(296),
                                    margin: getMargin(left: 8, bottom: 13),
                                    child: Text(
                                        "Welcome to FinEx: Where Financial Empowerment Begins. Dive into a world of smart money management with our intuitive app. From budgeting to goal-setting, we're here to guide you on the path to financial success and security.",
                                        maxLines: 9,
                                        overflow: TextOverflow.ellipsis,
                                        style:
                                            CustomTextStyles.headlineSmall_1))),
                            CustomElevatedButton(
                                height: getVerticalSize(51),
                                text: "Start Using Finex",
                                margin: getMargin(left: 37, top: 33, right: 38),
                                buttonStyle: CustomButtonStyles.fillGray,
                                buttonTextStyle:
                                    CustomTextStyles.headlineSmallInterBold,
                                onTap: () {
                                  navigatetohome(context);
                                },
                                alignment: Alignment.center),
                            SizedBox(height: getVerticalSize(59)),
                            CustomImageView(
                                imagePath: ImageConstant.imgImage3141x225,
                                height: getVerticalSize(174),
                                width: getHorizontalSize(272))
                          ])))
                    ]))));
  }

  /// Navigates to the questinareScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the questinareScreen.
  navigatetohome(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.homepageScreen);
  }
}
