import 'package:flutter/material.dart';
import 'package:iconfide/src/config/constant.dart';

import '../../../config/theme/colors.dart';

class ChatItem extends StatefulWidget {
  final Map<String, dynamic> data;
  const ChatItem({Key? key, required this.data}) : super(key: key);

  @override
  State<ChatItem> createState() => _ChatItemState();
}

class _ChatItemState extends State<ChatItem> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: widget.data['isSender']
            ? MainAxisAlignment.end
            : MainAxisAlignment.start, // Align content based on isSender
        children: [
          if (!widget.data['isSender'])
            Row(
              children: [
                SizedBox(
                  child: CircleAvatar(
                    child: Image.asset(widget.data['profile']),
                  ),
                ),
                const SizedBox(
                  width: 10.0,
                ),
              ],
            ),
          Flexible(
            child: IntrinsicWidth(
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20,
                  vertical: 8,
                ),
                decoration: BoxDecoration(
                  color: widget.data['isSender']
                      ? AppColors.biru2
                      : UIColors.white,
                  boxShadow: [
                    BoxShadow(
                      color: UIColors.custom_grey1.withOpacity(0.3),
                      offset: const Offset(0, 2),
                      blurRadius: 4,
                    ),
                  ],
                  borderRadius: widget.data['isSender']
                      ? const BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        )
                      : const BorderRadius.only(
                          bottomRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      widget.data['message'],
                      style: TextStyle(
                        color: widget.data['isSender']
                            ? UIColors.white
                            : UIColors.text,
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        "15:30",
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: AppConstants.kFontSizeXS,
                          color: widget.data['isSender']
                              ? UIColors.white
                              : UIColors.text,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          if (widget.data['isSender'])
            Row(
              children: [
                const SizedBox(
                  width: 10.0,
                ),
                SizedBox(
                  child: CircleAvatar(
                    child: Image.asset(widget.data['profile']),
                  ),
                ),
              ],
            ),
        ],
      ),
    );
  }
}
