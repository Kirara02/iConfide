// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class ChatListTile extends StatelessWidget {
  final Map<String, dynamic> data;
  const ChatListTile({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: UIColors.white,
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: UIColors.custom_grey1.withOpacity(0.5),
            offset: const Offset(0, 3),
            blurRadius: 4,
          ),
        ],
      ),
      child: Row(
        children: [
          SizedBox(
            width: 50,
            child: CircleAvatar(
              child: Image.asset(
                data['img'],
              ),
            ),
          ),
          const SizedBox(
            width: 10.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      data['name'],
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: AppConstants.kFontSizeM,
                      ),
                    ),
                    Text(
                      "@${data['username']}",
                      style: const TextStyle(
                        fontWeight: FontWeight.w300,
                        color: UIColors.custom_grey1,
                        fontSize: AppConstants.kFontSizeS,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 3.0,
                ),
                Text(
                  "${data['time']}",
                  style: const TextStyle(
                    fontWeight: FontWeight.w300,
                    color: UIColors.custom_grey1,
                    fontSize: AppConstants.kFontSizeXS,
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  "${data['message']}",
                  maxLines: 1,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeS,
                    overflow: TextOverflow.ellipsis,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
