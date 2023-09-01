import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:dinesh_s_application42/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/user_image.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/settings_screen.dart';

import 'package:firebase_auth/firebase_auth.dart';








// ignore_for_file: must_be_immutable
class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {


  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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

  Future<void> _login(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      try {
        final _usercredentials =
            await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        var myGlobalvariable=_usercredentials;
        print(_usercredentials);
        navigatetohomescreen(context);
        
       
      } on FirebaseAuthException catch (error) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(error.message ?? 'Authentication failed')),
        );
      }
    }
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
                    
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                          SizedBox(
                              height: getVerticalSize(192),
                              width: getHorizontalSize(299),
                              child:
                                  Stack(alignment: Alignment.center, children: [
                                Align(
                                    alignment: Alignment.bottomRight,
                                    child: Padding(
                                        padding: getPadding(right: 28,bottom: 10),
                                        child: Text("Welcome to FinEx.",
                                            style: CustomTextStyles
                                                .titleLargeBold_1))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgImage2,
                                    height: getVerticalSize(192),
                                    width: getHorizontalSize(299),
                                    alignment: Alignment.center)
                              ])),
                          CustomTextFormField(
                              controller: emailController,
                              margin: getMargin(left: 41, top: 49, right: 64),
                              hintText: "Enter your email",
                              textInputType: TextInputType.emailAddress,
                              validator: _emailValidator),
                          CustomTextFormField(
                              controller: passwordController,
                              margin: getMargin(left: 41, top: 18, right: 64),
                              hintText: "Enter password",
                              textInputAction: TextInputAction.done,
                              textInputType: TextInputType.visiblePassword,
                              obscureText: true, validator: _passwordValidator),
                          CustomElevatedButton(
                              height: getVerticalSize(46),
                              text: "Log in",
                              onTap: () {
                                _login(context);
                              },
                              margin: getMargin(left: 27, top: 34, right: 49),
                              buttonStyle: CustomButtonStyles.fillGray,
                              buttonTextStyle:
                                  CustomTextStyles.titleLargeBold_1),
                          SizedBox(height: getVerticalSize(18)),
                          
                          Padding(
                              padding: getPadding(left: 40, top: 23),
                              child: Row(children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Don't have an account?",
                                        style: theme.textTheme.bodyMedium)),
                                GestureDetector(
                                    onTap: () {
                                      navigatetoregister(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 17),
                                        child: Text(" Register Here",
                                            style: CustomTextStyles
                                                .bodyMediumErrorContainer)))
                              ])),
                        
                        ])))));
  }


  navigatetoregister(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.registrationScreen);
  }
  navigatetohomescreen(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.homepageScreen);
  }
}

