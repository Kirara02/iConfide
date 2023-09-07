import 'package:flutter/material.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/features/home/widget/WorkshopCard.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/constant.dart';
import '../../detail_workshop/view/detail_workshop_page.dart';

class WorkshopSection extends StatefulWidget {
  const WorkshopSection({super.key});

  @override
  State<WorkshopSection> createState() => _WorkshopSectionState();
}

class _WorkshopSectionState extends State<WorkshopSection> {
  List<Map<String, dynamic>> data = [
    {
      "title": "Cara mengenal diri sendiri",
      "description":
          "Cara untuk lebih dekat dan memahami diri sendiri dimulai dari hal kecil aadsdsdsd",
      "company": "PT. Maju tapi gak mau mundur",
      "price": 150000.0,
      "img_url": Assets.images.bannerImage.path,
      "benefits": ["Snack", "Buku Pengenalan Diri Sendiri", "Pengetahuan"]
    },
    {
      "title": "Cara mengenal Diri sendiri",
      "img_url": Assets.images.bannerImage.path,
    },
    {
      "title": "Cara mengenal Diri sendiri",
      "img_url": Assets.images.bannerImage.path,
    },
    {
      "title": "Cara mengenal Diri sendiri",
      "img_url": Assets.images.bannerImage.path,
    },
    {
      "title": "Cara mengenal Diri sendiri",
      "img_url": Assets.images.bannerImage.path,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Workshop',
              style: TextStyle(
                fontSize: AppConstants.kFontSizeL,
                fontWeight: FontWeight.bold,
                color: AppColors.primaryColors,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('View All'),
            )
          ],
        ),
        const SizedBox(
          height: 5.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: List.generate(
                data.length,
                (index) => InkWell(
                    onTap: () => pushDynamicScreen(context,
                        screen: PageTransition(
                            child: DetailWorkshopPage(data: data[0]),
                            type: PageTransitionType.rightToLeft)),
                    child: WorkshopCard(data: data[index]))),
          ),
        )
      ],
    );
  }
}
