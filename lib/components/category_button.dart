import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

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
