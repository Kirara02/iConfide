import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../../gen/assets.gen.dart';
import '../../../config/theme/colors.dart';

class BannerSection extends StatefulWidget {
  const BannerSection({super.key});

  @override
  State<BannerSection> createState() => _BannerSectionState();
}

class _BannerSectionState extends State<BannerSection> {
  CarouselController controller = CarouselController();
  int currentCarousel = 0;

  List<Map<String, dynamic>> data = [
    {
      'img_url': Assets.images.banner.path,
    },
    {
      'img_url': Assets.images.banner.path,
    },
    {
      'img_url': Assets.images.banner.path,
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          carouselController: controller,
          options: CarouselOptions(
            height: 120,
            aspectRatio: 16 / 9,
            viewportFraction: 1,
            initialPage: 0,
            enableInfiniteScroll: false,
            reverse: false,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            autoPlayCurve: Curves.fastOutSlowIn,
            enlargeCenterPage: true,
            scrollDirection: Axis.horizontal,
            onPageChanged: (index, reason) {
              setState(() {
                currentCarousel = index;
              });
            },
          ),
          items: data.map((image) {
            return ClipRRect(
              borderRadius: BorderRadius.circular(20),
              // child: UICacheNetworkImage(
              //   imageUrl: image['img_url'],
              //   size: Size(
              //     AppScreens.width,
              //     102,
              //   ),
              // ),
              child: Image.asset(
                image['img_url'],
                fit: BoxFit.cover,
              ),
            );
          }).toList(),
        ),
        const SizedBox(
          height: 5.0,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: data.asMap().entries.map((entry) {
            final index = entry.key;
            return Padding(
              padding: const EdgeInsets.only(right: 5.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(50),
                child: Container(
                  width: currentCarousel == index ? 30 : 10,
                  height: 10,
                  decoration: BoxDecoration(
                    color: currentCarousel == index
                        ? AppColors.biru1
                        : Colors.grey,
                  ),
                ),
              ),
            );
          }).toList(),
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
