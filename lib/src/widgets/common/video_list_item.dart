import 'package:flutter/material.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class VideoListItem extends StatelessWidget {
  final Map<String, dynamic> data;
  const VideoListItem({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Column(
        children: [
          Stack(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: SizedBox(
                  width: AppScreens.width,
                  child: Image.asset(
                    data['thumbnail'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 8,
                right: 8,
                child: Container(
                  decoration: BoxDecoration(
                      color: UIColors.grey_100,
                      borderRadius: BorderRadius.circular(2)),
                  padding: const EdgeInsets.symmetric(
                    horizontal: 6,
                    vertical: 2,
                  ),
                  child: Text(
                    data['duration'],
                    style: const TextStyle(
                      color: UIColors.white,
                      fontSize: AppConstants.kFontSizeS,
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              ClipOval(
                child: Image.asset(
                  data['profile_url'],
                  width: 30,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    data['user'],
                    style: const TextStyle(
                      color: Color(0xFF6A6A6A),
                      fontSize: AppConstants.kFontSizeXS,
                    ),
                  ),
                  const SizedBox(
                    height: 3,
                  ),
                  Text(
                    data['title'],
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: AppConstants.kFontSizeS,
                    ),
                  ),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
