import 'dart:developer';

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconfide/src/features/onboarding/view/onboarding_page.dart';

import '../config/constant.dart';
import '../config/theme/colors.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      log(context.locale.toString());
      // context.setLocale(Locale('id'));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'iConfide',
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      theme: ThemeData(
        useMaterial3: true,
        scaffoldBackgroundColor: UIColors.white,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: UIColors.white,
            backgroundColor: AppColors.primaryColors,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            minimumSize: const Size(100, 50),
          ),
        ),
        textTheme:
            GoogleFonts.sourceSansProTextTheme(Theme.of(context).textTheme),
        appBarTheme: const AppBarTheme(
          titleTextStyle: TextStyle(
            color: UIColors.white,
            fontWeight: FontWeight.w500,
            fontSize: AppConstants.kFontSizeM,
          ),
          backgroundColor: AppColors.primary,
          iconTheme: IconThemeData(
            size: 20,
            color: UIColors.white,
          ),
          actionsIconTheme: IconThemeData(
            size: 20,
            color: UIColors.white,
          ),
        ),
      ),
      home: OnboardingPage(),
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
