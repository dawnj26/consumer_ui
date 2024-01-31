import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'square_button.dart';

class ProductCapacity extends StatelessWidget {
  const ProductCapacity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Capacity',
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.w500,
            color: Colors.white,
          ),
        ),
        Gap(10.0),
        Row(
          children: [
            SquareButton(name: 'Calories', value: '90'),
            Gap(16.0),
            SquareButton(name: 'Additive', value: '3%'),
            Gap(16.0),
            SquareButton(name: 'Vitamin', value: '8%'),
          ],
        ),
      ],
    );
  }
}
