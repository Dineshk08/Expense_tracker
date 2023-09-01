import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:dinesh_s_application42/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/pop_upone_dialog/pop_upone_dialog.dart';

import 'package:firebase_auth/firebase_auth.dart';

final _firebase = FirebaseAuth.instance;




// ignore_for_file: must_be_immutable
class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  TextEditingController emailController = TextEditingController();

  TextEditingController fullNameController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  var _enteredEmail = '';
  var _enteredusername = '';
  var _enteredPassword = '';
  var _enteredconfirmPassword = '';

  String? _emailValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter an email address';
    }
    if (!value.contains('@')) {
      return 'Please enter a valid email address';
    }
    return null;
  }

  String? _passwordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please enter a password';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }

  String? _confirmPasswordValidator(String? value) {
    if (value == null || value.isEmpty) {
      return 'Please confirm your password';
    }
    if (value != passwordController.text) {
      return 'Passwords do not match';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgImage3,
                              height: getVerticalSize(189),
                              width: getHorizontalSize(262)),
                          Padding(
                              padding: getPadding(left: 89, top: 12),
                              child: Text("Welcome Onboard!",
                                  style: CustomTextStyles.titleLargeBold_1)),
                          Padding(
                              padding: getPadding(left: 67, top: 13),
                              child: Text("Let's help you meet up your tasks.",
                                  style: CustomTextStyles.titleSmallMedium15)),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(left: 34, top: 57, right: 60),
                              hintText: "Enter your email",
                              textInputType: TextInputType.emailAddress,
                              validator: _emailValidator),
                          CustomTextFormField(
                              controller: fullNameController,
                              margin: getMargin(left: 36, top: 20, right: 69),
                              hintText: "Enter your full name"),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(left: 36, top: 27, right: 69),
                              hintText: "Enter password",
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              validator: _passwordValidator),
                          CustomTextFormField(
                              controller: confirmpasswordController,
                              margin: getMargin(left: 36, top: 27, right: 69),
                              hintText: "Confirm password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true,
                              contentPadding: getPadding(
                                  left: 29, top: 15, right: 29, bottom: 15),
                              validator: _confirmPasswordValidator),
                          CustomElevatedButton(
                              height: getVerticalSize(53),
                              text: "Register ",
                              margin: getMargin(left: 34, top: 31, right: 42),
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeBold_1,
                              onTap: () {
                                _submitForm();
                              },
                              alignment: Alignment.center),
                          SizedBox(height: getVerticalSize(32)),
                          Align(
                              alignment: Alignment.centerRight,
                              child: SizedBox(
                                  height: getVerticalSize(141),
                                  width: getHorizontalSize(352),
                                  child: Stack(
                                      alignment: Alignment.topRight,
                                      children: [
                                        Align(
                                            alignment: Alignment.topLeft,
                                            child: GestureDetector(
                                                onTap: () {
                                                  navigatetologin(context);
                                                },
                                            child: Padding(
                                                padding: getPadding(top: 1),
                                                child: Text(
                                                    "Already have an account? ",
                                                    style: theme.textTheme
                                                        .bodyMedium)))),
                                        Align(
                                            alignment: Alignment.topRight,
                                            child: GestureDetector(
                                                onTap: () {
                                                  navigatetologin(context);
                                                },
                                                child: Padding(
                                                    padding: getPadding(
                                                        top: 2, right: 145),
                                                    child: Text("sign in",
                                                        style: CustomTextStyles
                                                            .bodyMediumErrorContainer)))), 
                                        
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgImage3141x225,
                                            height: getVerticalSize(130),
                                            width: getHorizontalSize(225),
                                            alignment: Alignment.centerRight)
                                      ]))),
                        ]))))));
  }

  /// Displays an [AlertDialog] with a custom content widget using the
  /// provided [BuildContext].
  ///
  /// The custom content is created using the [PopUponeDialog]
  /// method and is displayed in an [AlertDialog] that fills the entire screen
  /// with no padding.
  void _submitForm() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      _enteredEmail = emailController.text;
      _enteredusername = fullNameController.text;
      _enteredPassword = passwordController.text;
      _enteredconfirmPassword = confirmpasswordController.text;
      try {
        final userCredentials = await _firebase.createUserWithEmailAndPassword(
            email: _enteredEmail, password: _enteredPassword);
        print(userCredentials);
        navigatepopup(context);
      } on FirebaseAuthException catch (error) {
        if (error.code == 'email-already-in-use') {}
        ScaffoldMessenger.of(context).clearSnackBars();
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(error.message ?? 'Authentication failed'),
        ));
      }
    }
  }

  navigatepopup(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        content: PopUponeDialog(),
        backgroundColor: Colors.transparent,
        contentPadding: EdgeInsets.zero,
        insetPadding: const EdgeInsets.only(left: 0),
      ),
    );
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginScreen.
  navigatetologin(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.loginScreen);
  }
}
