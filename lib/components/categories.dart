import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
          ),
        ),
      ],
    );
  }
}

class CategoryButton extends StatelessWidget {
  const CategoryButton({
    required this.svgPath,
    required this.name,
    required this.iconSize,
    super.key,
  });

  final String svgPath;
  final String name;
  final double iconSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          svgPath,
          width: iconSize,
          height: iconSize,
        ),
        const Gap(8.0),
        Text(name),
      ],
    );
  }
}
