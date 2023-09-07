import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/features/video_detail/view/video_detail_page.dart';
import 'package:iconfide/src/widgets/common/video_list_item.dart';
import 'package:page_transition/page_transition.dart';
import 'package:persistent_bottom_nav_bar_v2/persistent-tab-view.dart';

class VideoPage extends StatefulWidget {
  const VideoPage({Key? key}) : super(key: key);

  @override
  State<VideoPage> createState() => _VideoPageState();
}

class _VideoPageState extends State<VideoPage> {
  TextEditingController searchController = TextEditingController(text: '');
  ScrollController scrollController = ScrollController();

  Map<String, dynamic> data = {
    "video_url":
        "http://commondatastorage.googleapis.com/gtv-videos-bucket/sample/TearsOfSteel.mp4",
    "thumbnail": Assets.images.bannerImage.path,
    "profile_url": Assets.images.userIconMale2.path,
    "title": "7 Tanda kamu harus ke psikkolog  ( Terapi psikologis )",
    "description":
        "Perseners! siapa yang lagi ngerasain gejala depresi atau gangguan mental? lo perlu tuh ke psikolog! Simak penjelasan dari Puspita Alwi Co-Founder Sehatjiwa.id tentang 7 tanda kamu perlu ke psikolog dan terapi psikologis",
    "user": "Takaeru Mastushita",
    "duration": "6.30",
    "date": "7 Juli 2023",
    "tags": [
      "KesehatanMental",
      "Psikologis",
      "VideoMotivasi",
    ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video"),
        actions: [
          IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(Assets.icons.search.path))
        ],
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
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      // var item = datas[index];
                      return InkWell(
                        onTap: () => pushDynamicScreen(
                          context,
                          screen: PageTransition(
                              child: VideoDetailPage(data: data),
                              type: PageTransitionType.rightToLeft),
                          withNavBar: false,
                        ),
                        child: VideoListItem(
                          data: data,
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
