import 'package:flutter/material.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';
import 'package:iconfide/src/utils/format_currentcy.dart';

class ItemListCard extends StatefulWidget {
  final String title;
  final String description;
  final String company;
  final double price;
  final String imgUrl;

  const ItemListCard(
      {super.key,
      required this.title,
      required this.description,
      required this.company,
      required this.price,
      required this.imgUrl});

  @override
  State<ItemListCard> createState() => _ItemListCardState();
}

class _ItemListCardState extends State<ItemListCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: AppConstants.kPaddingS),
      padding: const EdgeInsets.only(bottom: AppConstants.kPaddingS),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: AppColors.primaryColors, width: 2))),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 49,
            width: 54,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.asset(
                widget.imgUrl,
                fit: BoxFit.fill,
              ),
            ),
          ),
          const SizedBox(
            width: 14,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 13,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(
                  widget.description,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: AppConstants.kFontSizeXS,
                    overflow: TextOverflow.ellipsis,
                    color: Color(0xFF654664),
                  ),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Container(
                  width: 124,
                  alignment: Alignment.center,
                  padding: const EdgeInsets.symmetric(
                    vertical: 2.0,
                  ),
                  decoration: BoxDecoration(
                      color: AppColors.greenAccent,
                      borderRadius: BorderRadius.circular(4)),
                  child: Text(
                    formatCurrency(widget.price),
                    style: const TextStyle(
                      color: UIColors.white,
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
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
