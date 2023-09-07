import 'package:flutter/material.dart';
import 'package:iconfide/src/config/theme/colors.dart';

class CallButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget icon;
  final Color backgroundColor;
  const CallButton({
    super.key,
    required this.onPressed,
    required this.icon,
    this.backgroundColor = Colors.transparent,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 50,
        height: 50,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          border: Border.all(
            color: backgroundColor != Colors.transparent
                ? Colors.transparent
                : UIColors.white,
          ),
          shape: BoxShape.circle,
        ),
        child: icon,
      ),
    );
  }
}
