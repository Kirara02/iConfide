// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/features/private_chat/view/private_chat_page.dart';
import 'package:iconfide/src/features/private_chat/widget/chat_list_tile.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../utils/dismiss_keyboard.dart';

class ListPrivateChatPage extends StatefulWidget {
  const ListPrivateChatPage({Key? key}) : super(key: key);

  @override
  State<ListPrivateChatPage> createState() => _PrivateChatPageState();
}

class _PrivateChatPageState extends State<ListPrivateChatPage> {
  TextEditingController searchController = TextEditingController(text: '');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Private Chat"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(
          right: 25,
          left: 25,
          top: 15,
          bottom: 70,
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
                    borderSide:
                        const BorderSide(color: Color(0xffE4BCE3), width: 2),
                    borderRadius: BorderRadius.circular(10)),
                focusedBorder: OutlineInputBorder(
                    borderSide:
                        const BorderSide(color: Color(0xffE4BCE3), width: 2),
                    borderRadius: BorderRadius.circular(10)),
                isDense: true,
                filled: false,
                fillColor: UIColors.white,
                hintText: 'Cari Comate...',
                contentPadding: const EdgeInsets.only(
                  left: AppConstants.kPaddingXL,
                  right: AppConstants.kPaddingL,
                ),
                hintStyle: const TextStyle(fontSize: AppConstants.kFontSizeM),
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
              itemCount: 3,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                Map<String, dynamic> data = {
                  "img": Assets.images.userIconMale2.path,
                  "name": "Takaeru Matshuhita",
                  "username": "takaeroi_6969",
                  "time": "5 Menit yang lalu",
                  "message": "Kenapa kucing mengeong????",
                };

                return GestureDetector(
                    onTap: () => pushDynamicScreen(
                          context,
                          screen: PageTransition(
                              child: PrivateChatPage(data: data),
                              type: PageTransitionType.fade),
                          withNavBar: false,
                        ),
                    child: ChatListTile(data: data));
              },
            )
          ],
        ),
      ),
    );
  }
}
