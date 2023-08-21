import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../config/constant.dart';
import '../config/theme/colors.dart';
import 'main_navigation.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iConfide',
      theme: ThemeData(
        useMaterial3: true,
        textTheme:
            GoogleFonts.interTextTheme(Theme.of(context).primaryTextTheme),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: UIColors.white,
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeL,
          ),
          centerTitle: true,
          backgroundColor: AppColors.primary,
          actionsIconTheme: IconThemeData(
            color: UIColors.white,
          ),
          iconTheme: IconThemeData(
            color: UIColors.white,
          ),
        ),
        scaffoldBackgroundColor: AppColors.primary,
      ),
      home: const MainNavigation(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
