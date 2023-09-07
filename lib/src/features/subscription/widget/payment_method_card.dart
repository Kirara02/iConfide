import 'package:flutter/material.dart';

class PaymentMethodCard extends StatelessWidget {
  final String imgUrl;
  const PaymentMethodCard({super.key, required this.imgUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 50,
      padding: EdgeInsets.symmetric(vertical: 2, horizontal: 4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Color(0xffD3D1D191).withOpacity(0.57)),
      ),
      child: Image.asset(
        imgUrl,
        width: 16,
      ),
    );
  }
}
