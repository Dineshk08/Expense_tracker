import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class StartPageScreen extends StatelessWidget {
  const StartPageScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup258),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(216)),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(
                                          left: 34, right: 36, bottom: 91),
                                      child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgRectangle23,
                                                height: getVerticalSize(237),
                                                width: getHorizontalSize(303)),
                                            Container(
                                                width: getHorizontalSize(158),
                                                margin:
                                                    getMargin(left: 5, top: 51),
                                                child: Text(
                                                    "Get your own financial assassistant ",
                                                    maxLines: 3,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    style: CustomTextStyles
                                                        .headlineSmallInterBold)),
                                            CustomElevatedButton(
                                                height: getVerticalSize(64),
                                                text: "Get started",
                                                margin:
                                                    getMargin(left: 5, top: 94),
                                                buttonStyle:
                                                    CustomButtonStyles.fillGray,
                                                buttonTextStyle:
                                                    CustomTextStyles
                                                        .titleLargeBold_1,
                                                onTap: () {
                                                  navigatetoregistration(
                                                      context);
                                                })
                                          ]))))
                        ])))));
  }

  /// Navigates to the registrationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the registrationScreen.
  navigatetoregistration(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.registrationScreen, (route) => false);
  }
}
