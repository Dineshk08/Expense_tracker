import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/scheduler.dart';
import 'package:dinesh_s_application42/theme/theme_helper.dart';
import 'package:dinesh_s_application42/routes/app_routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/expense/expense_bloc.dart';
import 'package:dinesh_s_application42/presentation/homepage_screen/functionality/income/income_bloc.dart';
import 'package:dinesh_s_application42/presentation/settings_screen/ProfileBloc.dart';
void main() async {
  
  WidgetsFlutterBinding.ensureInitialized();
  final prefs = await SharedPreferences.getInstance();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);

  ///Please update theme as per your need if required.
  ThemeHelper().changeTheme('primary');
  runApp(MyApp(prefs));
}
class MyApp extends StatelessWidget {
    final SharedPreferences prefs; // Declare the SharedPreferences instance

  MyApp(this.prefs); 
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider( // Use MultiBlocProvider to provide multiple blocs if needed
      providers: [
        BlocProvider<ExpenseBloc>(create: (context) => ExpenseBloc(prefs)), // Provide your ExpenseBloc
        BlocProvider<IncomeBloc>(create: (context) => IncomeBloc()),
        BlocProvider<ProfileBloc>(create: (context) => ProfileBloc()),
      ],
      child: MaterialApp(
      theme: theme,
      title: 'dinesh_s_application42',
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.startPageScreen,
      routes: AppRoutes.routes,)
    );
  }
}
