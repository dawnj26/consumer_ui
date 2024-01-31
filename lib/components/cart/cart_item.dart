import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CartItem extends StatelessWidget {
  const CartItem({
    required this.imgPath,
    required this.name,
    required this.quantity,
    super.key,
  });

  final String imgPath;
  final String name;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(
              imgPath,
              height: 100,
            ),
            const Gap(16.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const Gap(12.0),
                const Text(
                  r'$9.43',
                  style: TextStyle(
                    color: Color(0xffc4c4c4),
                    fontSize: 16.0,
                  ),
                ),
              ],
            ),
          ],
        ),
        Text(
          'X$quantity',
          style: const TextStyle(
            color: Colors.white,
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }
}
