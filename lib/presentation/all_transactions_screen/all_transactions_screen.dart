import 'package:dinesh_s_application42/core/app_export.dart';

import 'package:flutter/material.dart';
import '../menubar_draweritem/menubar_draweritem.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense_bloc.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income_bloc.dart';


import 'package:flutter_bloc/flutter_bloc.dart';



class AllTransactionsScreen extends StatelessWidget {
  AllTransactionsScreen({Key? key}) : super(key: key);
  
  Map<String, double> _categoryExpenses = {
  "Essentials": 0,
  // Add the remaining categories here
  // For example:
  // "Category2": 0,
  // "Category3": 0,
  // ...
};
  
  
  double calculateTotalIncome(List<Income> incomes) {
    double totalIncome = incomes.fold(0, (sum, income) => sum + income.amount);
    return totalIncome;
  }

  double calculateTotalExpense(List<Expense> expenses) {
    double totalExpense = expenses.fold(0, (sum, expense) => sum + expense.amount);
    return totalExpense;
  }
  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  void _showTransactionsModal(
      BuildContext context, String categoryName, List<Expense> expenses) {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return Container(
          child: ListView.builder(
            itemCount: expenses.length,
            itemBuilder: (BuildContext context, int index) {
              Expense expense = expenses[index];
              return ListTile(
                title: Text(expense.title),
                subtitle: Text('Date: ${expense.date}'),
                trailing: Text('₹${expense.amount.toStringAsFixed(2)}'),
              );
            },
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    List<Expense> expenses = context.watch<ExpenseBloc>().state;
    List<Income> incomes = context.watch<IncomeBloc>().state;
    double totalIncome = calculateTotalIncome(incomes);
    double totalExpense = calculateTotalExpense(expenses);

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
                        image: AssetImage(ImageConstant.imgHomepage),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        padding: getPadding(top: 20),
                        child: Padding(
                            padding: getPadding(left: 17, right: 13),
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      svgPath: ImageConstant.imgMenu,
                                      height: getVerticalSize(25),
                                      width: getHorizontalSize(40),
                                      onTap: () {
                                        navigatetomenu(context);
                                      }),
                                  Padding(
                                      padding: getPadding(left: 85, top: 2),
                                      child: Text("Transactions of the ",
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  Padding(
                                      padding: getPadding(left: 72),
                                      child: Text("    Month: August",
                                          style:
                                              theme.textTheme.headlineSmall)),
                                  Padding(
                                      padding: getPadding(left: 50, top: 11),
                                      child: Row(children: [
                                        Container(
                                            padding: getPadding(
                                                left: 14,
                                                top: 10,
                                                right: 14,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .fillTeal
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL20),
                                            child: Text("Total Income",
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Container(
                                            margin: getMargin(left: 1),
                                            padding: getPadding(
                                                left: 30,
                                                top: 9,
                                                right: 30,
                                                bottom: 9),
                                            decoration: AppDecoration.fillRed
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBR27),
                                            child: Text("₹${totalIncome.toStringAsFixed(2)}",
                                                style: CustomTextStyles
                                                    .titleLargeBlack900))
                                      ])),
                                  Padding(
                                      padding: getPadding(left: 50, top: 11),
                                      child: Row(children: [
                                        Container(
                                            margin: getMargin(top: 1),
                                            padding: getPadding(
                                                left: 9,
                                                top: 10,
                                                right: 9,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .fillRed
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderTL20),
                                            child: Text("Total Expense",
                                                style: theme
                                                    .textTheme.titleLarge)),
                                        Container(
                                            margin: getMargin(left: 1),
                                            padding: getPadding(
                                                left: 30,
                                                top: 10,
                                                right: 30,
                                                bottom: 10),
                                            decoration: AppDecoration
                                                .fillSecondaryContainer
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .customBorderBR27),
                                            child: Text("₹${totalExpense.toStringAsFixed(2)}",
                                                style: CustomTextStyles
                                                    .titleLargeBlack900))
                                      ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 7, top: 18, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(107),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 1),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        GestureDetector(
                                                                          onTap:
                                                                              () {
                                                                            // Fetch the expenses for the "Essentials" category
                                                                            List<Expense>
                                                                                essentialsExpenses =
                                                                                context.read<ExpenseBloc>().state;

                                                                            // Show the bottom modal sheet with expenses
                                                                            _showTransactionsModal(
                                                                                context,
                                                                                "Essentials",
                                                                                essentialsExpenses);
                                                                          },
                                                                        ),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 12, top: 4, right: 12, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomCenter))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 13, bottom: 7),
                                                                                child: Text("₹${_categoryExpenses["Essentials"]}", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 36),
                                                              child: Text(
                                                                  "Essentials",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgComputer,
                                                                        height: getVerticalSize(
                                                                            13),
                                                                        width: getHorizontalSize(
                                                                            18),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                19))
                                                                  ])))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(106),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  padding: getPadding(
                                                                      left: 2,
                                                                      top: 1,
                                                                      right: 2,
                                                                      bottom:
                                                                          1),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 11, top: 4, right: 11, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 34),
                                                              child: Text(
                                                                  "Transportation",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVolume,
                                                                        height: getVerticalSize(
                                                                            19),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        margin: getMargin(
                                                                            top:
                                                                                1))
                                                                  ])))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 4, top: 32),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(99),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 3),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 12, bottom: 8),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgAirplane,
                                                                        height: getSize(
                                                                            19),
                                                                        width: getSize(
                                                                            19),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        margin: getMargin(
                                                                            right:
                                                                                16))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 30),
                                                              child: Text(
                                                                  "Housing",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(102),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 13),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomLeft))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9, bottom: 11),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              margin: getMargin(
                                                                  left: 48),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCar,
                                                                        height: getVerticalSize(
                                                                            20),
                                                                        width: getHorizontalSize(
                                                                            25),
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        margin: getMargin(
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                14))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 28),
                                                              child: Text(
                                                                  "Health Care",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 7, top: 18, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(107),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 1),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 12, top: 4, right: 12, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomCenter))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 13, bottom: 7),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 36),
                                                              child: Text(
                                                                  "Education",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgComputer,
                                                                        height: getVerticalSize(
                                                                            13),
                                                                        width: getHorizontalSize(
                                                                            18),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                19))
                                                                  ])))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(106),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  padding: getPadding(
                                                                      left: 2,
                                                                      top: 1,
                                                                      right: 2,
                                                                      bottom:
                                                                          1),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 11, top: 4, right: 11, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 34),
                                                              child: Text(
                                                                  "Emergency",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVolume,
                                                                        height: getVerticalSize(
                                                                            19),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        margin: getMargin(
                                                                            top:
                                                                                1))
                                                                  ])))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 4, top: 32),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(99),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 3),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 12, bottom: 8),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgAirplane,
                                                                        height: getSize(
                                                                            19),
                                                                        width: getSize(
                                                                            19),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        margin: getMargin(
                                                                            right:
                                                                                16))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 30),
                                                              child: Text(
                                                                  "Personal Care",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(102),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 13),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomLeft))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9, bottom: 11),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              margin: getMargin(
                                                                  left: 48),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCar,
                                                                        height: getVerticalSize(
                                                                            20),
                                                                        width: getHorizontalSize(
                                                                            25),
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        margin: getMargin(
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                14))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 28),
                                                              child: Text(
                                                                  "Entertainment",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 7, top: 18, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(107),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 1),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 12, top: 4, right: 12, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomCenter))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 13, bottom: 7),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 36),
                                                              child: Text(
                                                                  "Communication",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgComputer,
                                                                        height: getVerticalSize(
                                                                            13),
                                                                        width: getHorizontalSize(
                                                                            18),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                19))
                                                                  ])))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(106),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  padding: getPadding(
                                                                      left: 2,
                                                                      top: 1,
                                                                      right: 2,
                                                                      bottom:
                                                                          1),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 11, top: 4, right: 11, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 34),
                                                              child: Text(
                                                                  "Miscellaneous",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVolume,
                                                                        height: getVerticalSize(
                                                                            19),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        margin: getMargin(
                                                                            top:
                                                                                1))
                                                                  ])))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(left: 4, top: 32),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(99),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 3),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 12, bottom: 8),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgAirplane,
                                                                        height: getSize(
                                                                            19),
                                                                        width: getSize(
                                                                            19),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerRight,
                                                                        margin: getMargin(
                                                                            right:
                                                                                16))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 30),
                                                              child: Text(
                                                                  "Travel",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(102),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topLeft,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomLeft,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: getMargin(
                                                                  left: 13),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width:
                                                                      getHorizontalSize(
                                                                          130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 10, top: 4, right: 10, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomLeft))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9, bottom: 11),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment:
                                                              Alignment.topLeft,
                                                          child: Container(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              margin: getMargin(
                                                                  left: 48),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topRight,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgCar,
                                                                        height: getVerticalSize(
                                                                            20),
                                                                        width: getHorizontalSize(
                                                                            25),
                                                                        alignment:
                                                                            Alignment
                                                                                .topRight,
                                                                        margin: getMargin(
                                                                            top:
                                                                                2,
                                                                            right:
                                                                                14))
                                                                  ]))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 28),
                                                              child: Text(
                                                                  "Debt Payments",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1)))
                                                    ]))
                                          ])),
                                  Padding(
                                      padding: getPadding(
                                          left: 7, top: 18, right: 7),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                                height: getVerticalSize(107),
                                                width: getHorizontalSize(167),
                                                margin: getMargin(bottom: 1),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height:
                                                                      getVerticalSize(
                                                                          90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 12, top: 4, right: 12, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomCenter))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 13, bottom: 7),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 36),
                                                              child: Text(
                                                                  "Savings",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .centerLeft,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgComputer,
                                                                        height: getVerticalSize(
                                                                            13),
                                                                        width: getHorizontalSize(
                                                                            18),
                                                                        alignment:
                                                                            Alignment
                                                                                .centerLeft,
                                                                        margin: getMargin(
                                                                            left:
                                                                                19))
                                                                  ])))
                                                    ])),
                                            SizedBox(
                                                height: getVerticalSize(106),
                                                width: getHorizontalSize(167),
                                                child: Stack(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    children: [
                                                      Align(
                                                          alignment: Alignment
                                                              .bottomCenter,
                                                          child: Card(
                                                              clipBehavior: Clip
                                                                  .antiAlias,
                                                              elevation: 0,
                                                              margin: EdgeInsets.all(
                                                                  0),
                                                              color: theme
                                                                  .colorScheme
                                                                  .secondaryContainer
                                                                  .withOpacity(
                                                                      0.7),
                                                              shape: RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder24),
                                                              child: Container(
                                                                  height: getVerticalSize(
                                                                      90),
                                                                  width: getHorizontalSize(
                                                                      130),
                                                                  padding: getPadding(
                                                                      left: 2,
                                                                      top: 1,
                                                                      right: 2,
                                                                      bottom:
                                                                          1),
                                                                  decoration: AppDecoration
                                                                      .fillSecondaryContainer1
                                                                      .copyWith(
                                                                          borderRadius: BorderRadiusStyle
                                                                              .roundedBorder24),
                                                                  child: Stack(
                                                                      alignment:
                                                                          Alignment
                                                                              .bottomRight,
                                                                      children: [
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                height: getVerticalSize(17),
                                                                                width: getHorizontalSize(40),
                                                                                padding: getPadding(left: 11, top: 4, right: 11, bottom: 4),
                                                                                decoration: AppDecoration.fillBlueGray.copyWith(borderRadius: BorderRadiusStyle.customBorderTL24),
                                                                                child: CustomImageView(svgPath: ImageConstant.imgPlusPrimary, height: getVerticalSize(6), width: getHorizontalSize(16), alignment: Alignment.bottomRight))),
                                                                        Align(
                                                                            alignment: Alignment
                                                                                .bottomRight,
                                                                            child: Container(
                                                                                width: getHorizontalSize(81),
                                                                                margin: getMargin(right: 9),
                                                                                child: Text("₹0.0", maxLines: null, overflow: TextOverflow.ellipsis, style: theme.textTheme.titleSmall)))
                                                                      ])))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: Padding(
                                                              padding:
                                                                  getPadding(
                                                                      top: 34),
                                                              child: Text(
                                                                  "Investments",
                                                                  textAlign:
                                                                      TextAlign
                                                                          .center,
                                                                  style: CustomTextStyles
                                                                      .titleSmallInter_1))),
                                                      Align(
                                                          alignment: Alignment
                                                              .topCenter,
                                                          child: SizedBox(
                                                              height:
                                                                  getVerticalSize(
                                                                      25),
                                                              width:
                                                                  getHorizontalSize(
                                                                      60),
                                                              child: Stack(
                                                                  alignment:
                                                                      Alignment
                                                                          .topCenter,
                                                                  children: [
                                                                    Align(
                                                                        alignment:
                                                                            Alignment
                                                                                .center,
                                                                        child: Container(
                                                                            height:
                                                                                getVerticalSize(25),
                                                                            width: getHorizontalSize(60),
                                                                            decoration: BoxDecoration(color: appTheme.teal100, borderRadius: BorderRadius.circular(getHorizontalSize(30))))),
                                                                    CustomImageView(
                                                                        svgPath:
                                                                            ImageConstant
                                                                                .imgVolume,
                                                                        height: getVerticalSize(
                                                                            19),
                                                                        width: getHorizontalSize(
                                                                            21),
                                                                        alignment:
                                                                            Alignment
                                                                                .topCenter,
                                                                        margin: getMargin(
                                                                            top:
                                                                                1))
                                                                  ])))
                                                    ]))
                                          ])),
                                ])))))));
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }
}
