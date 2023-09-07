// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/features/private_chat/widget/call_button.dart';

class CallPage extends StatelessWidget {
  const CallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.brown,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 25,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipOval(
                child: Image.asset(
                  Assets.images.userIconMale.path,
                  width: 200,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              const Text(
                "Takaeru Matsushita",
                style: TextStyle(
                  fontSize: AppConstants.kFontSizeX,
                  fontWeight: FontWeight.w500,
                  color: UIColors.white,
                ),
              ),
              const SizedBox(
                height: 8.0,
              ),
              const Text(
                "00:30",
                style: TextStyle(
                  fontSize: AppConstants.kFontSizeX,
                  fontWeight: FontWeight.w500,
                  color: UIColors.white,
                ),
              ),
              const SizedBox(
                height: 50.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  CallButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.volumeUp.path,
                    ),
                  ),
                  CallButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.volumeOff.path,
                    ),
                  ),
                  CallButton(
                    onPressed: () {},
                    icon: SvgPicture.asset(
                      Assets.icons.voice.path,
                    ),
                  ),
                  CallButton(
                    onPressed: () {},
                    backgroundColor: AppColors.danger,
                    icon: SvgPicture.asset(
                      Assets.icons.callSilent.path,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
