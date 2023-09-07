import 'package:flutter/material.dart';

import '../../../config/constant.dart';
import '../../../config/theme/colors.dart';

class PopularCard extends StatefulWidget {
  final Map<String, dynamic> data;
  const PopularCard({super.key, required this.data});

  @override
  State<PopularCard> createState() => _PopularCardState();
}

class _PopularCardState extends State<PopularCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 191,
          height: 156,
          margin: const EdgeInsets.only(right: 15.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              widget.data['img_url'],
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 5.0,
        ),
        SizedBox(
          width: 150,
          child: Text(
            widget.data['title'],
            maxLines: 2,
            style: TextStyle(
              color: AppColors.primaryColors,
              fontSize: AppConstants.kFontSizeXS,
              fontWeight: FontWeight.bold,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        )
      ],
    );
  }
}
