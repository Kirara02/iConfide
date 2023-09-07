import 'package:flutter/material.dart';
import 'package:iconfide/src/config/constant.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class WorkshopCard extends StatefulWidget {
  final Map<String, dynamic> data;
  const WorkshopCard({super.key, required this.data});

  @override
  State<WorkshopCard> createState() => _WorkshopCardState();
}

class _WorkshopCardState extends State<WorkshopCard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 123,
          height: 85,
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
          width: 110,
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
