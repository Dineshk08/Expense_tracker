
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:dinesh_s_application42/presentation/start_page_screen/start_page_screen.dart';
import 'package:dinesh_s_application42/presentation/registration_screen/registration_screen.dart';
import 'package:dinesh_s_application42/presentation/login_screen/login_screen.dart';
import 'package:dinesh_s_application42/presentation/welcome_page_screen/welcome_page_screen.dart';
import 'package:dinesh_s_application42/presentation/questinare_screen/questinare_screen.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/homepage_screen.dart';
import 'package:dinesh_s_application42/presentation/all_transactions_screen/all_transactions_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/tips_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/investments_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/gold_investmentone_screen/gold_investmentone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/fixed_depositone_screen/fixed_depositone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/life_insuranceone_screen/life_insuranceone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/recurring_depositone_screen/recurring_depositone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/ppfone_screen/ppfone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/post_officeone_screen/post_officeone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/gold_bondsone_screen/gold_bondsone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/mutual_fundsone_screen/mutual_fundsone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/health_insuranceone_screen/health_insuranceone_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/schematic_investmentone_screen/schematic_investmentone_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/zero_based_budgeting_screen/zero_based_budgeting_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/reverse_budgeting_screen/reverse_budgeting_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/x_your_annual_incomeone_screen/x_your_annual_incomeone_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/rule_of_seventytwo_screen/rule_of_seventytwo_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/rule_screen/rule_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/cash_only_budgeting_screen/cash_only_budgeting_screen.dart';
import 'package:dinesh_s_application42/presentation/faq_screen/faq_screen.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/settings_screen.dart';
import 'package:dinesh_s_application42/presentation/profile_screen/profile_screen.dart';
import 'package:dinesh_s_application42/presentation/contact_us_screen/contact_us_screen.dart';
import 'package:dinesh_s_application42/presentation/investments_screen/stock_market_screen/stock_market_screen.dart';
import 'package:dinesh_s_application42/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:dinesh_s_application42/presentation/tips_screen/twenty_screen/twenty_screen.dart';


class AppRoutes {
  static const String startPageScreen = '/start_page_screen';

  static const String twentyscreen= '/twenty_screen';


  static const String registrationScreen = '/registration_screen';

  static const String loginScreen = '/login_screen';

  static const String welcomePageScreen = '/welcome_page_screen';

  static const String questinareScreen = '/questinare_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String allTransactionsScreen = '/all_transactions_screen';

  static const String tipsScreen = '/tips_screen';

  static const String investmentsScreen = '/investments_screen';

  static const String goldInvestmentoneScreen = '/gold_investmentone_screen';

  static const String fixedDepositoneScreen = '/fixed_depositone_screen';

  static const String lifeInsuranceoneScreen = '/life_insuranceone_screen';

  static const String recurringDepositoneScreen =
      '/recurring_depositone_screen';

  static const String ppfoneScreen = '/ppfone_screen';

  static const String postOfficeoneScreen = '/post_officeone_screen';

  static const String goldBondsoneScreen = '/gold_bondsone_screen';

  static const String mutualFundsoneScreen = '/mutual_fundsone_screen';

  static const String healthInsuranceoneScreen = '/health_insuranceone_screen';

  static const String schematicInvestmentoneScreen =
      '/schematic_investmentone_screen';

  static const String zeroBasedBudgetingScreen = '/zero_based_budgeting_screen';

  static const String reverseBudgetingScreen = '/reverse_budgeting_screen';

  static const String xYourAnnualIncomeoneScreen =
      '/x_your_annual_incomeone_screen';

  static const String ruleOfSeventytwoScreen = '/rule_of_seventytwo_screen';

  static const String ruleScreen = '/rule_screen';

  static const String cashOnlyBudgetingScreen = '/cash_only_budgeting_screen';

  static const String faqScreen = '/faq_screen';

  static const String settingsScreen = '/settings_screen';

  static const String profileScreen = '/profile_screen';

  static const String contactUsScreen = '/contact_us_screen';

  static const String stockMarketScreen = '/stock_market_screen';

  static const String appNavigationScreen = '/app_navigation_screen';
  

  static Map<String, WidgetBuilder> routes = {
    startPageScreen: (context) => StreamBuilder(stream: FirebaseAuth.instance.authStateChanges(), builder: (ctx, snapshot) {
      if (snapshot.hasData){
        return  HomepageScreen();
      }
      return const StartPageScreen();
    }),
    registrationScreen: (context) => AuthScreen(),
    loginScreen: (context) => LoginScreen(),
    welcomePageScreen: (context) => WelcomePageScreen(),
    questinareScreen: (context) => QuestinareScreen(),
    homepageScreen: (context) => HomepageScreen(),
    allTransactionsScreen: (context) => AllTransactionsScreen(),
    tipsScreen: (context) => TipsScreen(),
    investmentsScreen: (context) => InvestmentsScreen(),
    goldInvestmentoneScreen: (context) => GoldInvestmentoneScreen(),
    fixedDepositoneScreen: (context) => FixedDepositoneScreen(),
    lifeInsuranceoneScreen: (context) => LifeInsuranceoneScreen(),
    recurringDepositoneScreen: (context) => RecurringDepositoneScreen(),
    ppfoneScreen: (context) => PpfoneScreen(),
    postOfficeoneScreen: (context) => PostOfficeoneScreen(),
    goldBondsoneScreen: (context) => GoldBondsoneScreen(),
    mutualFundsoneScreen: (context) => MutualFundsoneScreen(),
    healthInsuranceoneScreen: (context) => HealthInsuranceoneScreen(),
    schematicInvestmentoneScreen: (context) => SchematicInvestmentoneScreen(),
    twentyscreen:(context) => TwentyScreen(),

    zeroBasedBudgetingScreen: (context) => ZeroBasedBudgetingScreen(),
    reverseBudgetingScreen: (context) => ReverseBudgetingScreen(),
    xYourAnnualIncomeoneScreen: (context) => XYourAnnualIncomeoneScreen(),
    ruleOfSeventytwoScreen: (context) => RuleOfSeventytwoScreen(),
    ruleScreen: (context) => RuleScreen(),
    cashOnlyBudgetingScreen: (context) => CashOnlyBudgetingScreen(),
    faqScreen: (context) => FaqScreen(),
    settingsScreen: (context) => SettingsScreen(),
    profileScreen: (context) => ProfileScreen(),
    contactUsScreen: (context) => ContactUsScreen(),
    stockMarketScreen: (context) => StockMarketScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
