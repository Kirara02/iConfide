import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconfide/l10n/locale_keys.g.dart';
import 'package:iconfide/src/config/screen.dart';

import '../../../config/constant.dart';
import '../../../config/theme/colors.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../../widgets/forms/ux_input_select.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  TextEditingController nameController = TextEditingController(text: '');
  TextEditingController emailController = TextEditingController(text: '');
  TextEditingController nomorController = TextEditingController(text: '');
  TextEditingController passwordController = TextEditingController(text: '');
  TextEditingController confirmController = TextEditingController(text: '');

  List<String> options = ['abc', 'def', 'ghi', 'jkl', 'mno'];
  String? selectedProblem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  LocaleKeys.register_text.tr(),
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
                  controller: nameController,
                  hintText: 'Full Name',
                ),
                const SizedBox(
                  height: 15,
                ),
                UXInputCustom(
                  controller: emailController,
                  hintText: 'Email',
                  keyboardType: TextInputType.emailAddress,
                ),
                const SizedBox(
                  height: 15,
                ),
                UXInputCustom(
                  controller: nomorController,
                  hintText: 'Nomor Telp',
                  keyboardType: TextInputType.phone,
                ),
                const SizedBox(
                  height: 15,
                ),
                UXInputCustom(
                  controller: passwordController,
                  hintText: 'Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15,
                ),
                UXInputCustom(
                  controller: confirmController,
                  hintText: 'Retype Password',
                  obscureText: true,
                ),
                const SizedBox(
                  height: 15.0,
                ),
                UXInputSelectForm(
                  value: selectedProblem,
                  options: options,
                  onChanged: (value) {
                    setState(() {
                      selectedProblem = value;
                    });
                  },
                ),
                const SizedBox(
                  height: 25,
                ),
                SizedBox(
                  width: AppScreens.width,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(LocaleKeys.register_text.tr()),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Container(
                  width: AppScreens.width,
                  alignment: Alignment.centerRight,
                  child: InkWell(
                    onTap: () => Navigator.pop(context),
                    child: Text(
                      LocaleKeys.have_account.tr(),
                      style: const TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: AppConstants.kFontSizeS,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    nomorController.dispose();
    passwordController.dispose();
    confirmController.dispose();
    super.dispose();
  }
}
