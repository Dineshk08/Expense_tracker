import '../menubar_draweritem/menubar_draweritem.dart';
import 'package:dinesh_s_application42/core/app_export.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image.dart';
import 'package:dinesh_s_application42/widgets/app_bar/appbar_image_1.dart';
import 'package:dinesh_s_application42/widgets/app_bar/custom_app_bar.dart';
import 'package:dinesh_s_application42/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/new_expense.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense_bloc.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income_bloc.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/incomes_list.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expenses_list.dart';

import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/new_income.dart';
import 'package:flutter_bloc/flutter_bloc.dart'; 


// ignore_for_file: must_be_immutable
class _ExpensesState extends State<HomepageScreen> {
  final List<Expense> _registeredExpenses = [    ];
  final List<Income> _registeredIncomes =   [    ];
  
  Map<String, double> _categoryExpenses = {
  "Essentials": 0.0,
  "Category2": 0.0, // Initialize for all 14 categories
  // ...
};

  double calculateTotalIncome() {
    final List<Income> incomes = context.watch<IncomeBloc>().state;
    double totalIncome = incomes.fold(0, (sum, income) => sum + income.amount);
    return totalIncome;
  }

  double calculateTotalExpense() {
    final List<Expense> expenses = context.watch<ExpenseBloc>().state;
    double totalExpense = expenses.fold(0, (sum, expense) => sum + expense.amount);
    return totalExpense;
  }

  double calculateTotalAmount() {
    double totalIncome = calculateTotalIncome();
    double totalExpense = calculateTotalExpense();
    double totalAmount = totalIncome - totalExpense;
    return totalAmount;
  }


  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
  setState(() {
    _registeredExpenses.add(expense);

    String categoryKey = expense.category.toString();

    _categoryExpenses[categoryKey] = (_categoryExpenses[categoryKey] ?? 0) + expense.amount;
  });
}


  void _openAddIncomeOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => NewIncome(onAddIncome: _addIncome),
    );
  }

  void _addIncome(Income income) {
    setState(() {
      _registeredIncomes.add(income);
    });
  }

  

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
                        image: AssetImage(ImageConstant.imgHomepage),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: getPadding(top: 29, bottom: 29),
                              decoration: AppDecoration.fillGray.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.customBorderBL40),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    CustomAppBar(
                                        height: getVerticalSize(42),
                                        leadingWidth: getHorizontalSize(60),
                                        leading: AppbarImage(
                                            svgPath: ImageConstant.imgMenu,
                                            margin: getMargin(
                                                left: 20, top: 8, bottom: 9),
                                            onTap: () {
                                              navigatetomenu(context);
                                            }),
                                        actions: [
                                          AppbarImage1(
                                              svgPath:
                                                  ImageConstant.imgSettings,
                                              margin: getMargin(
                                                  left: 25, right: 25),
                                              onTap: () {
                                                navigatetosettings(context);
                                              })
                                        ]),
                                    SizedBox(height: getVerticalSize(15)),
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: getVerticalSize(77),
                                            width: getHorizontalSize(300),
                                            child: Stack(
                                                alignment: Alignment.bottomLeft,
                                                children: [
                                                  Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                            padding: getPadding(top: 10),
                                            child: Text("₹${calculateTotalAmount().toStringAsFixed(2)}",
                                                          style: CustomTextStyles
                                                              .displayMediumJost))),
                                                  Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: getPadding(left: 1),
                                                child: Text("Total balance",
                                                              style: theme
                                                                  .textTheme
                                                                  .headlineSmall)))
                                                ]))),
                                    CustomElevatedButton(
                                        height: getVerticalSize(49),
                                        onTap: _openAddExpenseOverlay,
                                        text: "Click to add Expense",
                                        margin: getMargin(
                                            left: 40, top: 16, right: 73),
                                        leftIcon: Container(
                                            margin: getMargin(right: 29),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPlus)),
                                        buttonStyle:
                                            CustomButtonStyles.outlineBlack,
                                        buttonTextStyle: CustomTextStyles
                                            .titleLargeJostOnPrimaryContainer),
                                    CustomElevatedButton(
                                        height: getVerticalSize(49),
                                        text: "Click to add Income",
                                        onTap: _openAddIncomeOverlay,
                                        margin: getMargin(
                                            left: 40,
                                            top: 40,
                                            right: 73,
                                            bottom: 4),
                                        leftIcon: Container(
                                            margin: getMargin(right: 21),
                                            child: CustomImageView(
                                                svgPath:
                                                    ImageConstant.imgPlus)),
                                        buttonStyle:
                                            CustomButtonStyles.outlineBlack,
                                        buttonTextStyle: CustomTextStyles
                                            .titleLargeJostOnPrimaryContainer)
                                  ])),
                          Padding(
                    padding: getPadding(top: 11, bottom: 11),
                    child: Text("Latest Transactions",
                        style: CustomTextStyles.headlineSmallSemiBold)),
                Padding(
                    padding: getPadding(top: 1, bottom: 1),
                    child: Text("Expenses",
                        style: CustomTextStyles.titleSmallInter)),
                BlocBuilder<ExpenseBloc, List<Expense>>(
                  builder: (context, expenses) {
                    Widget mainContent = const Center(
                      child: Text('No expenses found. Start adding Some!'),
                    );

                    if (expenses.isNotEmpty) {
                      mainContent = ExpensesList(
                        expenses: expenses,
                        onRemoveExpense: (expense) {
                          context
                              .read<ExpenseBloc>()
                              .add(RemoveExpenseEvent(expense));
                        },
                      );
                    }

                    return Expanded(
                      child: mainContent,
                    );
                    
                  },
                ),
                Padding(
                    padding: getPadding(top: 1, bottom: 1),
                    child: Text("Incomes",
                        style: CustomTextStyles.titleSmallInter)),
                
                BlocBuilder<IncomeBloc, List<Income>>(
                  builder: (context, incomes) {
                    Widget mainContent = const Center(
                      child: Text('No incomes found. Start adding Some!'),
                    );

                    if (incomes.isNotEmpty) {
                      mainContent = IncomesList(
                        incomes: incomes,
                        onRemoveIncome: (income) {
                          context
                              .read<IncomeBloc>()
                              .add(RemoveIncomeEvent(income));
                        },
                      );
                    }

                    return Expanded(
                      child: mainContent,
                    );
                  },
                ),
                        ])))));
  }

  /// Opens the drawer of the current scaffold using the [_scaffoldKey] instance
  /// variable.
  navigatetomenu(BuildContext context) {
    _scaffoldKey.currentState?.openDrawer();
  }

  /// Navigates to the settingsScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the settingsScreen.
  navigatetosettings(BuildContext context) {
    Navigator.popAndPushNamed(context, AppRoutes.settingsScreen);
  }
}

class HomepageScreen extends StatefulWidget {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );
  @override
  State<HomepageScreen> createState() {
    return _ExpensesState();
  }
}
