import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/features/private_chat/view/call_page.dart';
import 'package:iconfide/src/features/private_chat/view/video_call_page.dart';
import 'package:iconfide/src/features/private_chat/widget/chat_item.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

import '../../../config/constant.dart';
import '../../../config/theme/colors.dart';
import '../../../utils/dismiss_keyboard.dart';

class PrivateChatPage extends StatefulWidget {
  final Map<String, dynamic> data;
  const PrivateChatPage({Key? key, required this.data}) : super(key: key);

  @override
  State<PrivateChatPage> createState() => _PrivateChatPageState();
}

class _PrivateChatPageState extends State<PrivateChatPage> {
  TextEditingController sendController = TextEditingController(text: '');
  List<Map<String, dynamic>> chats = [
    {
      "message": "Kenapa kucing mengeong????",
      "isSender": false,
      "profile": Assets.images.user2.path,
    },
    {
      "message": "Karena dia kucing",
      "isSender": true,
      "profile": Assets.images.user1.path,
    },
    {
      "message": "Yes my lord",
      "isSender": true,
      "profile": Assets.images.user1.path,
    },
  ];

  @override
  void dispose() {
    sendController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.data['name']),
        actions: [
          IconButton(
            onPressed: () => pushDynamicScreen(
              context,
              screen: PageTransition(
                child: const VideoCallPage(),
                type: PageTransitionType.fade,
              ),
              withNavBar: false,
            ),
            icon: SvgPicture.asset(
              Assets.icons.video.path,
            ),
          ),
          IconButton(
            onPressed: () => pushDynamicScreen(
              context,
              screen: PageTransition(
                child: const CallPage(),
                type: PageTransitionType.fade,
              ),
              withNavBar: false,
            ),
            icon: SvgPicture.asset(
              Assets.icons.call.path,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              Assets.icons.filter.path,
            ),
          )
        ],
      ),
      body: SizedBox(
        height: AppScreens.height,
        child: Stack(
          children: [
            ListView.builder(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 15,
              ),
              shrinkWrap: true,
              itemCount: chats.length,
              itemBuilder: (context, index) {
                var chat = chats[index];
                return ChatItem(data: chat);
              },
            ),
            Positioned(
              bottom: 10,
              child: SizedBox(
                width: AppScreens.width,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    children: [
                      Flexible(
                        child: TextFormField(
                          controller: sendController,
                          onFieldSubmitted: (value) {
                            hideKeyboard(context);
                          },
                          decoration: InputDecoration(
                            enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE4BCE3), width: 2),
                                borderRadius: BorderRadius.circular(25)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                    color: Color(0xffE4BCE3), width: 2),
                                borderRadius: BorderRadius.circular(25)),
                            isDense: true,
                            filled: false,
                            fillColor: UIColors.white,
                            hintText: 'Ketik Pesan',
                            contentPadding: const EdgeInsets.only(
                              left: AppConstants.kPaddingXL,
                              right: AppConstants.kPaddingL,
                            ),
                            hintStyle: const TextStyle(
                                fontSize: AppConstants.kFontSizeM),
                            prefixIcon: Icon(
                              Icons.note_add_rounded,
                              size: 24,
                              color: AppColors.primaryColors.withOpacity(0.8),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      Container(
                        width: 50,
                        padding: const EdgeInsets.all(10.0),
                        decoration: BoxDecoration(
                          color: AppColors.primaryColors,
                          shape: BoxShape.circle,
                        ),
                        child: SvgPicture.asset(
                          Assets.icons.voice.path,
                          width: 20,
                        ),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
