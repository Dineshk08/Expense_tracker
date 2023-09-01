import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/pop_upone_dialog/pop_upone_dialog.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor:
                theme.colorScheme.onPrimaryContainer.withOpacity(1),
            body: SizedBox(
                width: getHorizontalSize(375),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          decoration: AppDecoration.fillOnPrimaryContainer,
                          child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(
                                            left: 20,
                                            top: 10,
                                            right: 20,
                                            bottom: 10),
                                        child: Text("App Navigation",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: appTheme.black900,
                                                fontSize: getFontSize(20),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)))),
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Padding(
                                        padding: getPadding(left: 20),
                                        child: Text(
                                            "Check your app's UI from the below demo screens of your app.",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                                color: appTheme.blueGray400,
                                                fontSize: getFontSize(16),
                                                fontFamily: 'Roboto',
                                                fontWeight: FontWeight.w400)))),
                                SizedBox(height: getVerticalSize(5)),
                                Divider(
                                    height: getVerticalSize(1),
                                    thickness: getVerticalSize(1),
                                    color: appTheme.black900)
                              ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Container(
                                  decoration:
                                      AppDecoration.fillOnPrimaryContainer,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        GestureDetector(
                                            onTap: () {
                                              onTapStartpage(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Start_page",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRegistration(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Registration",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapLogin(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Login",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapWelcomepage(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Welcome_page",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapQuestinare(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Questinare",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapHomepage(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Homepage",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapAllTransactions(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "all_Transactions",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTips(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Tips",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapInvestments(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Investments",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapGoldInvestmentOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Gold_InvestmentOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapFixedDepositOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Fixed_DepositOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapLifeInsuranceOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Life_InsuranceOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRecurringDepositOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Recurring_DepositOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapPPFOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text("PPFOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapPostOfficeOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Post_OfficeOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapGoldBondsOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Gold_BondsOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapMutualFundsOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Mutual_FundsOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapHealthInsuranceOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Health_InsuranceOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSchematicInvestmentOne(
                                                  context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Schematic_InvestmentOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapZerobasedbudgeting(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Zero_based_budgeting",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapReversebudgeting(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Reverse_budgeting",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapXyourannualincomeOne(
                                                  context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "2X_your_annual_incomeOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapRuleofSeventyTwo(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Rule_of_SeventyTwo",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTaprule(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "20_4_10_rule",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapCashonlybudgeting(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Cash_only_budgeting",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapFAQ(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "FAQ",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapSettings(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Settings",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapProfile(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "profile",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapContactus(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Contact_us",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapStockmarket(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "Stock_market",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ]))),
                                        GestureDetector(
                                            onTap: () {
                                              onTapPopupOne(context);
                                            },
                                            child: Container(
                                                decoration: AppDecoration
                                                    .fillOnPrimaryContainer,
                                                child: Column(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .centerLeft,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      left: 20,
                                                                      top: 10,
                                                                      right: 20,
                                                                      bottom:
                                                                          10),
                                                              child: Text(
                                                                  "pop_upOne",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: TextStyle(
                                                                      color: appTheme
                                                                          .black900,
                                                                      fontSize:
                                                                          getFontSize(
                                                                              20),
                                                                      fontFamily:
                                                                          'Roboto',
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w400)))),
                                                      SizedBox(
                                                          height:
                                                              getVerticalSize(
                                                                  5)),
                                                      Divider(
                                                          height:
                                                              getVerticalSize(
                                                                  1),
                                                          thickness:
                                                              getVerticalSize(
                                                                  1),
                                                          color: appTheme
                                                              .blueGray400)
                                                    ])))
                                      ]))))
                    ]))));
  }

  /// Navigates to the startPageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the startPageScreen.
  onTapStartpage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.startPageScreen);
  }

  /// Navigates to the registrationScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the registrationScreen.
  onTapRegistration(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.registrationScreen);
  }

  /// Navigates to the loginScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginScreen.
  onTapLogin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreen);
  }

  /// Navigates to the welcomePageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the welcomePageScreen.
  onTapWelcomepage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.welcomePageScreen);
  }

  /// Navigates to the questinareScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the questinareScreen.
  onTapQuestinare(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.questinareScreen);
  }

  /// Navigates to the homepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homepageScreen.
  onTapHomepage(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }

  /// Navigates to the allTransactionsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the allTransactionsScreen.
  onTapAllTransactions(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.allTransactionsScreen);
  }

  /// Navigates to the tipsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the tipsScreen.
  onTapTips(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.tipsScreen);
  }

  /// Navigates to the investmentsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the investmentsScreen.
  onTapInvestments(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.investmentsScreen);
  }

  /// Navigates to the goldInvestmentoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the goldInvestmentoneScreen.
  onTapGoldInvestmentOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goldInvestmentoneScreen);
  }

  /// Navigates to the fixedDepositoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the fixedDepositoneScreen.
  onTapFixedDepositOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fixedDepositoneScreen);
  }

  /// Navigates to the lifeInsuranceoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the lifeInsuranceoneScreen.
  onTapLifeInsuranceOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lifeInsuranceoneScreen);
  }

  /// Navigates to the recurringDepositoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the recurringDepositoneScreen.
  onTapRecurringDepositOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recurringDepositoneScreen);
  }

  /// Navigates to the ppfoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ppfoneScreen.
  onTapPPFOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ppfoneScreen);
  }

  /// Navigates to the postOfficeoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the postOfficeoneScreen.
  onTapPostOfficeOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.postOfficeoneScreen);
  }

  /// Navigates to the goldBondsoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the goldBondsoneScreen.
  onTapGoldBondsOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.goldBondsoneScreen);
  }

  /// Navigates to the mutualFundsoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the mutualFundsoneScreen.
  onTapMutualFundsOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.mutualFundsoneScreen);
  }

  /// Navigates to the healthInsuranceoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the healthInsuranceoneScreen.
  onTapHealthInsuranceOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.healthInsuranceoneScreen);
  }

  /// Navigates to the schematicInvestmentoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the schematicInvestmentoneScreen.
  onTapSchematicInvestmentOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.schematicInvestmentoneScreen);
  }

  /// Navigates to the zeroBasedBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the zeroBasedBudgetingScreen.
  onTapZerobasedbudgeting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.zeroBasedBudgetingScreen);
  }

  /// Navigates to the reverseBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the reverseBudgetingScreen.
  onTapReversebudgeting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reverseBudgetingScreen);
  }

  /// Navigates to the xYourAnnualIncomeoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the xYourAnnualIncomeoneScreen.
  onTapXyourannualincomeOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.xYourAnnualIncomeoneScreen);
  }

  /// Navigates to the ruleOfSeventytwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ruleOfSeventytwoScreen.
  onTapRuleofSeventyTwo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ruleOfSeventytwoScreen);
  }

  /// Navigates to the ruleScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the ruleScreen.
  onTaprule(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.ruleScreen);
  }

  /// Navigates to the cashOnlyBudgetingScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the cashOnlyBudgetingScreen.
  onTapCashonlybudgeting(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cashOnlyBudgetingScreen);
  }

  /// Navigates to the faqScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the faqScreen.
  onTapFAQ(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.faqScreen);
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
  onTapSettings(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.settingsScreen);
  }

  /// Navigates to the profileScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the profileScreen.
  onTapProfile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.profileScreen);
  }

  /// Navigates to the contactUsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the contactUsScreen.
  onTapContactus(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.contactUsScreen);
  }

  /// Navigates to the stockMarketScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the stockMarketScreen.
  onTapStockmarket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.stockMarketScreen);
  }

  /// Displays an [AlertDialog] with a custom content widget using the
  /// provided [BuildContext].
  ///
  /// The custom content is created using the [PopUponeDialog]
  /// method and is displayed in an [AlertDialog] that fills the entire screen
  /// with no padding.
  onTapPopupOne(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: PopUponeDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
