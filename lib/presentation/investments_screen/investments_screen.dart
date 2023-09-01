import '../menubar_draweritem/menubar_draweritem.dart';
import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class InvestmentsScreen extends StatelessWidget {
  InvestmentsScreen({Key? key}) : super(key: key);

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
            appBar: CustomAppBar(
                leadingWidth: double.maxFinite,
                leading: AppbarImage(
                    svgPath: ImageConstant.imgMenu,
                    margin:
                        getMargin(left: 25, top: 15, right: 325, bottom: 15),
                    onTap: () {
                      navigatetomenu(context);
                    })),
            body: Container(
                width: mediaQueryData.size.width,
                height: mediaQueryData.size.height,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgHomepage),
                        fit: BoxFit.cover)),
                child: SingleChildScrollView(
                    padding: getPadding(top: 10),
                    child: Padding(
                        padding: getPadding(left: 8, right: 19, bottom: 5),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              CustomElevatedButton(
                                  text: "Gold investment",
                                  onTap: () {
                                    onTapGoldinvestment(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Fixed deposit",
                                  onTap: () {
                                    onTapFixeddeposit(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Life Insurance",
                                  onTap: () {
                                    onTapLifeinsurance(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Recurring deposit",
                                  onTap: () {
                                    onTapRecurring(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Public povident fund",
                                  onTap: () {
                                    onTapPublicpovident(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Post office schemes",
                                  onTap: () {
                                    onTapPostoffice(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Gold bonds",
                                  onTap: () {
                                    onTapGoldbonds(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Mutual funds",
                                  onTap: () {
                                    onTapMutualfunds(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Health insurance",
                                  onTap: () {
                                    onTapHealth(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  width: getHorizontalSize(357),
                                  text: "Schematic investment plan",
                                  onTap: () {
                                    schematicinvestment(context);
                                  }),
                              SizedBox(height: getVerticalSize(23)),
                              CustomElevatedButton(
                                  text: "Share market",
                                  onTap: () {
                                    sharemarket(context);
                                  })
                            ]))))));
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the goldInvestmentoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the goldInvestmentoneScreen.
  onTapGoldinvestment(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.goldInvestmentoneScreen);
  }

  /// Navigates to the fixedDepositoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the fixedDepositoneScreen.
  onTapFixeddeposit(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.fixedDepositoneScreen);
  }

  /// Navigates to the lifeInsuranceoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the lifeInsuranceoneScreen.
  onTapLifeinsurance(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.lifeInsuranceoneScreen);
  }

  /// Navigates to the recurringDepositoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the recurringDepositoneScreen.
  onTapRecurring(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.recurringDepositoneScreen);
  }

  /// Navigates to the ppfoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ppfoneScreen.
  onTapPublicpovident(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.ppfoneScreen);
  }

  /// Navigates to the postOfficeoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the postOfficeoneScreen.
  onTapPostoffice(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.postOfficeoneScreen);
  }

  /// Navigates to the goldBondsoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the goldBondsoneScreen.
  onTapGoldbonds(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.goldBondsoneScreen);
  }

  /// Navigates to the mutualFundsoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the mutualFundsoneScreen.
  onTapMutualfunds(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.mutualFundsoneScreen);
  }

  /// Navigates to the healthInsuranceoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the healthInsuranceoneScreen.
  onTapHealth(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.healthInsuranceoneScreen);
  }

  /// Navigates to the schematicInvestmentoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the schematicInvestmentoneScreen.
  schematicinvestment(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.schematicInvestmentoneScreen);
  }

  /// Navigates to the stockMarketScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the stockMarketScreen.
  sharemarket(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.stockMarketScreen);
  }
}
