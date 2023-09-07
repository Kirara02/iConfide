import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:iconfide/src/features/login/view/login_page.dart';
import 'package:page_transition/page_transition.dart';
import 'package:iconfide/gen/assets.gen.dart';
import '../../../config/theme/colors.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<StatefulWidget> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  int currentCarousel = 0;
  CarouselController carouselController = CarouselController();

  List<Map<String, dynamic>> data = [
    {
      'img_url': Assets.images.userIconFemale.path,
    },
    {
      'img_url': Assets.images.userIconFemale.path,
    },
    {
      'img_url': Assets.images.userIconFemale.path,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                carouselController: carouselController,
                options: CarouselOptions(
                  height: 300,
                  viewportFraction: 1,
                  initialPage: 0,
                  enableInfiniteScroll: false,
                  reverse: false,
                  autoPlay: false,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentCarousel = index;
                    });
                  },
                ),
                items: data.map((data) {
                  return Image.asset(
                    data['img_url'],
                    fit: BoxFit.cover,
                  );
                }).toList(),
              ),
              const SizedBox(
                height: 100.0,
              ),
              SizedBox(
                width: 250,
                child: ElevatedButton(
                  onPressed: () {
                    if (currentCarousel == 2) {
                      Navigator.pushAndRemoveUntil(
                          context,
                          PageTransition(
                              alignment: Alignment.center,
                              child: LoginPage(),
                              duration: const Duration(milliseconds: 500),
                              type: PageTransitionType.fade),
                          (route) => true);
                    } else {
                      carouselController.nextPage();
                    }
                  },
                  child: Text(currentCarousel != 2 ? 'Next' : 'Get Started'),
                ),
              ),
              const SizedBox(
                height: 120.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: data.asMap().entries.map((entry) {
                  final index = entry.key;
                  return Container(
                    width: currentCarousel == index ? 30 : 10,
                    height: 10,
                    margin: const EdgeInsets.only(right: 5.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: currentCarousel == index
                          ? AppColors.primaryColors
                          : Colors.grey,
                    ),
                  );
                }).toList(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
