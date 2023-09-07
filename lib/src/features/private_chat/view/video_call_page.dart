// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/config/theme/colors.dart';

import '../widget/call_button.dart';

class VideoCallPage extends StatelessWidget {
  const VideoCallPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: AppScreens.width,
            height: AppScreens.height,
            child: Image.asset(
              Assets.images.imageVideo.path,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: AppScreens.width,
            height: AppScreens.height,
            padding: const EdgeInsets.symmetric(
              horizontal: 25,
              vertical: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  "Takaeru Matsushita",
                  style: TextStyle(
                    fontSize: AppConstants.kFontSizeX,
                    fontWeight: FontWeight.w500,
                    color: UIColors.white,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CallButton(
                            onPressed: () {},
                            backgroundColor: UIColors.white,
                            icon: const Icon(
                              CupertinoIcons.camera,
                              size: 20,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: SizedBox(
                              height: 182,
                              width: 110,
                              child: Image.asset(
                                Assets.images.imageVideo2.path,
                                fit: BoxFit.cover,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
