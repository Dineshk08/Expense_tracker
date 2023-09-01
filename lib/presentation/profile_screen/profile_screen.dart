import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 11, top: 8, right: 334, bottom: 8),
                    onTap: () {
                      onTapArrowleftone(context);
                    })),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup387),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          SizedBox(height: getVerticalSize(2)),
                          Expanded(
                              child: SingleChildScrollView(
                                  child: Padding(
                                      padding: getPadding(
                                          left: 23, right: 23, bottom: 5),
                                      child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            SizedBox(
                                                height: getVerticalSize(144),
                                                width: getHorizontalSize(140),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.bottomRight,
                                                    children: [
                                                      CustomImageView(
                                                          imagePath:
                                                              ImageConstant
                                                                  .imgEllipse21,
                                                          height: getSize(140),
                                                          width: getSize(140),
                                                          radius: BorderRadius
                                                              .circular(
                                                                  getHorizontalSize(
                                                                      70)),
                                                          alignment:
                                                              Alignment.center),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      31),
                                                              width:
                                                                  getHorizontalSize(
                                                                      33),
                                                              margin: getMargin(
                                                                  bottom: 3),
                                                              decoration: BoxDecoration(
                                                                  color: theme
                                                                      .colorScheme
                                                                      .onPrimaryContainer
                                                                      .withOpacity(
                                                                          1),
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              getHorizontalSize(16))))),
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomRight,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      right: 5),
                                                              child: Text("+",
                                                                  style: CustomTextStyles
                                                                      .headlineLargeRed300)))
                                                    ])),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 13, top: 32),
                                                    child: Text("Your Name",
                                                        style: CustomTextStyles
                                                            .titleSmallGray70001))),
                                            SizedBox(
                                                height: getVerticalSize(24)),
                                            SizedBox(
                                                height: getVerticalSize(30),
                                                width: getHorizontalSize(344),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: SizedBox(
                                                              width:
                                                                  getHorizontalSize(
                                                                      344),
                                                              child: Divider(
                                                                  color: appTheme
                                                                      .black900))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Text("Saranya",
                                                              style: CustomTextStyles
                                                                  .titleLargeJostExtraBold))
                                                    ])),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 11, top: 37),
                                                    child: Text("Your Birthday",
                                                        style: CustomTextStyles
                                                            .titleSmallGray70001))),
                                            SizedBox(
                                                height: getVerticalSize(21)),
                                            Text("15-Nov-1986",
                                                style: CustomTextStyles
                                                    .titleLargeJostExtraBold),
                                            SizedBox(
                                                height: getVerticalSize(1)),
                                            Divider(color: appTheme.black900),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding: getPadding(
                                                        left: 13, top: 24),
                                                    child: Text("Your Age",
                                                        style: CustomTextStyles
                                                            .titleSmallGray70001))),
                                            SizedBox(
                                                height: getVerticalSize(31)),
                                            Text("29",
                                                style: CustomTextStyles
                                                    .titleLargeJostExtraBold),
                                            Divider(color: appTheme.black900),
                                            SizedBox(
                                                height: getVerticalSize(23)),
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Text("Your Location",
                                                    style: CustomTextStyles
                                                        .titleSmallGray70001)),
                                            SizedBox(
                                                height: getVerticalSize(22)),
                                            Text("Madurai,Tamilnadu,India",
                                                style: CustomTextStyles
                                                    .titleLargeJostExtraBold),
                                            SizedBox(
                                                height: getVerticalSize(4)),
                                            Divider(color: appTheme.black900),
                                            SizedBox(
                                                height: getVerticalSize(23)),
                                            CustomElevatedButton(
                                                height: getVerticalSize(55),
                                                width: getHorizontalSize(155),
                                                text: "Save Info",
                                                buttonStyle: CustomButtonStyles
                                                    .fillPrimaryTL10,
                                                buttonTextStyle:
                                                    theme.textTheme.titleSmall!)
                                          ])))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: getPadding(left: 11, top: 19),
                                  child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        CustomAppBar(
                                            height: getVerticalSize(173),
                                            leadingWidth: double.maxFinite,
                                            leading: AppbarImage(
                                                svgPath:
                                                    ImageConstant.imgArrowleft,
                                                margin: getMargin(
                                                    left: 11, right: 334))),
                                        Container(
                                            height: getSize(140),
                                            width: getSize(140),
                                            margin: getMargin(top: 33),
                                            child: Stack(
                                                alignment:
                                                    Alignment.bottomRight,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse21,
                                                      height: getSize(140),
                                                      width: getSize(140),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  70)),
                                                      alignment:
                                                          Alignment.center),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Container(
                                                          height:
                                                              getVerticalSize(
                                                                  31),
                                                          width:
                                                              getHorizontalSize(
                                                                  33),
                                                          margin: getMargin(
                                                              bottom: 10),
                                                          decoration: BoxDecoration(
                                                              color: theme
                                                                  .colorScheme
                                                                  .onPrimaryContainer
                                                                  .withOpacity(
                                                                      1),
                                                              borderRadius:
                                                                  BorderRadius.circular(
                                                                      getHorizontalSize(
                                                                          16))))),
                                                  Align(
                                                      alignment:
                                                          Alignment.bottomRight,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              right: 5,
                                                              bottom: 6),
                                                          child: Text("+",
                                                              style: CustomTextStyles
                                                                  .headlineLargeRed300)))
                                                ]))
                                      ])))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
