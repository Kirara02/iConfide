import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconfide/src/app/main_navigation.dart';
import 'package:iconfide/src/features/register/view/register_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/l10n/locale_keys.g.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/widgets/forms/ux_input_custom.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/theme/colors.dart';

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController usernameController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              Assets.images.userIconFemale.path,
              width: 175,
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Login',
              style: TextStyle(
                fontSize: AppConstants.kFontSizeX,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColors,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            UXInputCustom(
              controller: usernameController,
              hintText: 'Username...',
            ),
            const SizedBox(
              height: 15,
            ),
            UXInputCustom(
              controller: passwordController,
              hintText: 'Password...',
              obscureText: true,
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: AppScreens.width,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                      context,
                      PageTransition(
                          child: const MainNavigation(),
                          type: PageTransitionType.fade),
                      (route) => true);
                },
                child: Text(LocaleKeys.signin_text.tr()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: AppScreens.width,
              child: ElevatedButton(
                onPressed: () {
                  pushDynamicScreen(context,
                      screen: PageTransition(
                          child: const RegisterPage(),
                          type: PageTransitionType.leftToRight));
                },
                child: Text(LocaleKeys.register_text.tr()),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
