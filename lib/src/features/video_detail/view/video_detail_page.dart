import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/features/video_detail/widget/user_comment_item.dart';
import 'package:iconfide/src/utils/dismiss_keyboard.dart';
import 'package:iconfide/src/widgets/forms/ux_input_custom.dart';

import '../../../../gen/assets.gen.dart';
import '../widget/video_player_widget.dart';

class VideoDetailPage extends StatefulWidget {
  final Map<String, dynamic> data;
  const VideoDetailPage({super.key, required this.data});

  @override
  State<VideoDetailPage> createState() => _VideoDetailPageState();
}

class _VideoDetailPageState extends State<VideoDetailPage> {
  TextEditingController commentController = TextEditingController(text: '');
  bool showMore = false;

  @override
  Widget build(BuildContext context) {
    final description = widget.data['description'];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.data['title'],
          textAlign: TextAlign.left,
          style: const TextStyle(overflow: TextOverflow.ellipsis),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.search.path))
        ],
      ),
      body: Stack(
        children: [
          Column(
            children: [
              VideoPlayerWidget(
                videoUrl: widget.data['video_url'],
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: SizedBox(
                  height: 50,
                  child: Row(
                    children: [
                      SizedBox(
                        width: 40,
                        child: CircleAvatar(
                          child: Image.asset(
                            Assets.images.userIconMale2.path,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.data['user'],
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                              color: UIColors.custom_grey1,
                            ),
                          ),
                          const SizedBox(
                            height: 2,
                          ),
                          Text(
                            widget.data['title'],
                            style: const TextStyle(
                              fontSize: AppConstants.kFontSizeS,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Expanded(
                child: SingleChildScrollView(
                  physics: const AlwaysScrollableScrollPhysics(),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Container(
                        width: AppScreens.width,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 15,
                          vertical: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color(0xffF3F3F3),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.data['date'],
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            const SizedBox(
                              height: 2,
                            ),
                            Row(
                              children: (widget.data['tags'] as List<dynamic>)
                                  .asMap()
                                  .entries
                                  .map((entry) {
                                final value = entry.value;
                                return Text(
                                  "#$value",
                                  style: const TextStyle(
                                    fontSize: AppConstants.kFontSizeS,
                                    color: Color(0xff006DD2),
                                  ),
                                );
                              }).toList(),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(
                              showMore
                                  ? description
                                  : description.length > 150
                                      ? '${description.substring(0, 150)}...'
                                      : description,
                              style: const TextStyle(
                                fontSize: AppConstants.kFontSizeS,
                                color: UIColors.custom_grey1,
                              ),
                            ),
                            if (description.length > 150)
                              Column(
                                children: [
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        showMore = !showMore;
                                      });
                                    },
                                    child: Text(
                                      showMore
                                          ? 'Lebih Sedikit'
                                          : 'Lebih Banyak',
                                      style: const TextStyle(
                                        fontSize: AppConstants.kFontSizeS,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      ListView.builder(
                        shrinkWrap: true,
                        itemCount: 10,
                        physics: const NeverScrollableScrollPhysics(),
                        itemBuilder: (context, index) {
                          Map<String, dynamic> data = {
                            "user": "takaeru_6969",
                            "time": "10 Jam yang lalu",
                            "text": "Terimakasih video nya sangat membantu.",
                          };

                          return UserCommentItem(data: data);
                        },
                      ),
                      const SizedBox(
                        height: 70,
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          Positioned(
            bottom: 10,
            child: SizedBox(
              width: AppScreens.width,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Row(
                  children: [
                    SizedBox(
                      height: 50,
                      child: CircleAvatar(
                        child: Image.asset(Assets.images.user1.path),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Flexible(
                      child: UXInputCustom(
                        controller: commentController,
                        onFieldSubmitted: (p0) {
                          hideKeyboard(context);
                        },
                        decoration: const InputDecoration(
                          hintText: "Tambahkan Komentar",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
