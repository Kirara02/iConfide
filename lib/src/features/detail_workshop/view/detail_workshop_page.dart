import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:iconfide/l10n/locale_keys.g.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/features/subscription/view/subscription_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../utils/format_currentcy.dart';

class DetailWorkshopPage extends StatefulWidget {
  final Map<String, dynamic> data;
  const DetailWorkshopPage({super.key, required this.data});

  @override
  State<DetailWorkshopPage> createState() => _DetailWorkshopPageState();
}

class _DetailWorkshopPageState extends State<DetailWorkshopPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['title']),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                widget.data['img_url'],
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.data['title'],
              style: const TextStyle(
                color: Color(0xff743671),
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              widget.data['description'],
              style: const TextStyle(
                color: Color(0xff654664),
                fontSize: AppConstants.kFontSizeS,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Text.rich(
              TextSpan(
                children: [
                  const TextSpan(
                    text: 'Pelaksana ',
                    style: TextStyle(
                      color: Color(0xff876D86),
                      fontSize: AppConstants.kFontSizeS,
                    ),
                  ),
                  TextSpan(
                    text: widget.data['company'],
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Text(
              formatCurrency(widget.data['price']),
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: AppConstants.kFontSizeL,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Row(
              children: [
                Icon(
                  Icons.access_time_outlined,
                  size: 15,
                ),
                SizedBox(
                  width: 5,
                ),
                Text(
                  '23 Agustus 2013 10:30',
                  style: TextStyle(fontSize: AppConstants.kFontSizeS),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: AppScreens.width,
              child: ElevatedButton(
                onPressed: () => pushDynamicScreen(context,
                    screen: PageTransition(
                      child: const SubscriptionPage(),
                      type: PageTransitionType.leftToRight,
                    )),
                child: Text(LocaleKeys.buy_text.tr()),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: widget.data['benefits'].map<Widget>((benefit) {
                String formattedBenefit = '\u2022  $benefit';
                return Text(
                  formattedBenefit,
                  style: const TextStyle(fontSize: AppConstants.kFontSizeS),
                );
              }).toList(),
            )
          ],
        ),
      ),
    );
  }
}
