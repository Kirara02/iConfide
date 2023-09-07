import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/features/home/widget/banner_section.dart';
import 'package:iconfide/src/features/home/widget/popular_section.dart';
import 'package:iconfide/src/features/home/widget/workshop_section.dart';

import '../../../../l10n/locale_keys.g.dart';
import '../../../config/screen.dart';
import '../../../config/theme/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Image.asset(
                  Assets.images.people.path,
                  width: 62,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      LocaleKeys.app_title.tr(),
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 7.0,
                    ),
                    Text(
                      LocaleKeys.app_subtitle.tr(),
                      style: const TextStyle(
                        fontSize: AppConstants.kFontSizeS,
                        fontWeight: FontWeight.w300,
                      ),
                    )
                  ],
                ),
              ],
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        Assets.icons.search.path,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: SvgPicture.asset(
                        Assets.icons.discovery.path,
                      ),
                    )
                  ],
                ),
                const Text('Welcome, Takaeru')
              ],
            ),
          ],
        ),
        actions: const [],
        toolbarHeight: 90,
      ),
      body: const SingleChildScrollView(
        padding: EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 20,
        ),
        child: Column(
          children: [
            BannerSection(),
            SizedBox(
              height: 20,
            ),
            WorkshopSection(),
            SizedBox(
              height: 20,
            ),
            PopularSection()
          ],
        ),
      ),
    );
  }
}
