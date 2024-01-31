import 'package:flutter/material.dart';

class ProductImage extends StatelessWidget {
  const ProductImage(this.imgPath, {super.key});

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    const double h = 180;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(imgPath, height: h),
        Transform.flip(
          flipY: true,
          child: Image.asset(imgPath, height: h),
        ),
      ],
    );
  }
}
