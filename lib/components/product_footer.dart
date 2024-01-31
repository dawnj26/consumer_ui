import 'package:flutter/material.dart';

import 'hero_content.dart';

class ProductFooter extends StatelessWidget {
  const ProductFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const ProductIcon(
          imgPath: 'assets/images/red_product.png',
          bgColor: Color(0xffe6ded2),
        ),
        const ProductIcon(
          imgPath: 'assets/images/orange_product.png',
          isActive: true,
          bgColor: Color(0xfff59255),
        ),
        const ProductIcon(
          imgPath: 'assets/images/violet_product.png',
          bgColor: Color(0xffe6ded2),
        ),
        OutlinedButton(
          onPressed: () {},
          style: OutlinedButton.styleFrom(
            side: const BorderSide(
              color: Color(0xffe9e1d5),
              width: 2,
            ),
            shape: const CircleBorder(),
            padding: const EdgeInsets.all(16.0),
            foregroundColor: const Color(0xffe9e1d5),
          ),
          child: const Icon(
            Icons.add,
            size: 32,
          ),
        )
      ],
    );
  }
}

class ProductIcon extends StatelessWidget {
  const ProductIcon(
      {required this.imgPath,
      required this.bgColor,
      super.key,
      this.isActive = false});

  final bool isActive;
  final String imgPath;
  final Color bgColor;

  @override
  Widget build(BuildContext context) {
    final double imgHeight = isActive ? 72 : 42;

    return Stack(
      alignment: Alignment.center,
      children: [
        CircleShape(radius: 64, bgColor: bgColor),
        Image.asset(
          imgPath,
          height: imgHeight,
        ),
      ],
    );
  }
}
