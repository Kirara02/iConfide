import 'package:flutter/material.dart';
import 'package:iconfide/gen/assets.gen.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/screen.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class UserCommentItem extends StatelessWidget {
  final Map<String, dynamic> data;
  const UserCommentItem({
    super.key,
    required this.data,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      width: AppScreens.width,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 40,
            child: CircleAvatar(
              child: Image.asset(Assets.images.userIconMale2.path),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text.rich(
                  TextSpan(
                    style: const TextStyle(
                      fontSize: AppConstants.kFontSizeS,
                      color: UIColors.custom_grey1,
                    ),
                    children: [
                      TextSpan(text: "@${data['user']}  ."),
                      TextSpan(text: "  ${data['time']}"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(data['text'])
              ],
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          InkWell(
            onTap: () {},
            child: Container(
              padding: const EdgeInsets.all(2),
              child: const Icon(
                Icons.more_vert,
                size: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
