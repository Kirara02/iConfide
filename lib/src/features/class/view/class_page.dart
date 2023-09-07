import 'package:flutter/material.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../utils/dismiss_keyboard.dart';
import '../../../widgets/common/item_list_card.dart';
import '../../../widgets/forms/ux_input_custom.dart';
import '../../detail_workshop/view/detail_workshop_page.dart';

class ClassPage extends StatefulWidget {
  const ClassPage({super.key});

  @override
  State<ClassPage> createState() => _ClassPageState();
}

class _ClassPageState extends State<ClassPage> {
  TextEditingController searchController = TextEditingController(text: '');
  ScrollController scrollController = ScrollController();

  Map<String, dynamic> datas = {
    "title": "Cara mengenal diri sendiri",
    "description":
        "Cara untuk lebih dekat dan memahami diri sendiri dimulai dari hal kecil aadsdsdsd",
    "company": "PT. Maju tapi gak mau mundur",
    "price": 150000.0,
    "img_url": Assets.images.banner.path,
    "benefits": ["Snack", "Buku Pengenalan Diri Sendiri", "Pengetahuan"]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Class"),
        actions: const [],
      ),
      body: Builder(
        builder: (context) {
          return RefreshIndicator(
            onRefresh: () => Future.sync(() {
              searchController.clear();
            }),
            child: SingleChildScrollView(
              controller: scrollController,
              physics: const AlwaysScrollableScrollPhysics(),
              padding: const EdgeInsets.only(
                top: 10,
                right: 20,
                left: 20,
                bottom: 56,
              ),
              child: Column(
                children: [
                  TextFormField(
                    controller: searchController,
                    onFieldSubmitted: (value) {
                      hideKeyboard(context);
                    },
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE4BCE3), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xffE4BCE3), width: 2),
                          borderRadius: BorderRadius.circular(10)),
                      isDense: true,
                      filled: false,
                      fillColor: UIColors.white,
                      hintText: 'Cari Workshop...',
                      contentPadding: const EdgeInsets.only(
                        left: AppConstants.kPaddingXL,
                        right: AppConstants.kPaddingL,
                      ),
                      hintStyle:
                          const TextStyle(fontSize: AppConstants.kFontSizeM),
                      prefixIcon: Icon(
                        Icons.search_outlined,
                        size: 24,
                        color: AppColors.primaryColors.withOpacity(0.8),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      // var item = datas[index];
                      return InkWell(
                        onTap: () => pushDynamicScreen(context,
                            screen: PageTransition(
                                child: DetailWorkshopPage(data: datas),
                                type: PageTransitionType.rightToLeft)),
                        child: ItemListCard(
                          title: datas['title'],
                          description: datas['description'],
                          company: datas['company'],
                          price: datas['price'],
                          imgUrl: datas['img_url'],
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
