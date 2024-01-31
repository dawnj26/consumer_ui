import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'category_button.dart';

class Categories extends StatelessWidget {
  const Categories({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            GestureDetector(
              onTap: () {},
              child: const CategoryButton(
                svgPath: 'assets/icons/dried_fruit.svg',
                name: 'Dried Fruit',
                iconSize: 48,
              ),
            ),
            const Gap(32.0),
            GestureDetector(
              onTap: () {},
              child: const CategoryButton(
                svgPath: 'assets/icons/nuts.svg',
                name: 'Nuts',
                iconSize: 38,
              ),
            ),
          ],
        ),
        const Spacer(),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            size: 32,
            color: Color(0xff4b2d17),
          ),
        ),
      ],
    );
  }
}
