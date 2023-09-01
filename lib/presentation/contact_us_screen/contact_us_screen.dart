import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:dinesh_s_application42/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import '../menubar_draweritem/menubar_draweritem.dart';

class ContactUsScreen extends StatelessWidget {
  ContactUsScreen({Key? key})
      : super(
          key: key,
        );
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController messageController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        key: _scaffoldKey,
        drawer: MenubarDraweritem(),
        resizeToAvoidBottomInset: false,
        appBar: CustomAppBar(
          height: getVerticalSize(51),
          leadingWidth: getHorizontalSize(56),
          leading: AppbarImage(
              svgPath: ImageConstant.imgMenu,
              margin: getMargin(
                left: 16,
                top: 17,
                bottom: 9,
              ),
              onTap: () {
                navigatetomenu(context);
              }),
        ),
        body: Container(
          width: mediaQueryData.size.width,
          height: mediaQueryData.size.height,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgGroup175,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Form(
            key: _formKey,
            child: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: getVerticalSize(15)),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: getPadding(
                          bottom: 5,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: getSize(390),
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.bottomCenter,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgRectangle88,
                                    height: getSize(390),
                                    width: getSize(390),
                                    alignment: Alignment.center,
                                  ),
                                  Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Container(
                                      width: getHorizontalSize(334),
                                      margin: getMargin(
                                        bottom: 18,
                                      ),
                                      child: Text(
                                        "Feel free to contact us any time. We will get back to you as soon as we can!",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.center,
                                        style: CustomTextStyles
                                            .titleSmallGray70001_1,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            CustomTextFormField(
                              controller: nameController,
                              margin: getMargin(
                                left: 22,
                                top: 24,
                                right: 24,
                              ),
                              hintText: "Name",
                              hintStyle: CustomTextStyles.titleSmallGray70003,
                              contentPadding: getPadding(
                                left: 12,
                                top: 21,
                                right: 12,
                                bottom: 21,
                              ),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              fillColor: theme.colorScheme.onPrimaryContainer,
                            ),
                            CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(
                                left: 22,
                                top: 24,
                                right: 24,
                              ),
                              hintText: "Email",
                              hintStyle: CustomTextStyles.titleSmallGray70003,
                              textInputType: TextInputType.emailAddress,
                              contentPadding: getPadding(
                                left: 14,
                                top: 21,
                                right: 14,
                                bottom: 21,
                              ),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              fillColor: theme.colorScheme.onPrimaryContainer,
                            ),
                            CustomTextFormField(
                              controller: messageController,
                              margin: getMargin(
                                left: 22,
                                top: 24,
                                right: 24,
                              ),
                              hintText: "Message",
                              hintStyle: CustomTextStyles.titleSmallGray70003,
                              textInputAction: TextInputAction.done,
                              contentPadding: getPadding(
                                left: 14,
                                top: 21,
                                right: 14,
                                bottom: 21,
                              ),
                              borderDecoration: TextFormFieldStyleHelper
                                  .fillOnPrimaryContainer,
                              fillColor: theme.colorScheme.onPrimaryContainer,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: CustomElevatedButton(
          onTap: () {showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: const Text('Thank you'),
          content: const Text(
              'Your Response Has been Submitted'),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(ctx);
              },
              child: Text('Okay'),
            )
          ],
        ),
      );},
          height: getVerticalSize(55),
          width: getHorizontalSize(155),
          text: "S E N D",
          margin: getMargin(
            left: 119,
            right: 119,
            bottom: 39,
          ),
          buttonStyle: CustomButtonStyles.fillPrimaryTL10,
          buttonTextStyle: theme.textTheme.titleSmall!,
        ),
      ),
    );
  }

  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
}
