import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProductHighlight extends StatelessWidget {
  const ProductHighlight({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          height: 310,
          width: 310,
          decoration: const BoxDecoration(
            color: Color(0xfff59255),
            shape: BoxShape.circle,
          ),
        ),
        Row(
          children: [
            Image.asset(
              'assets/images/orange_product.png',
              height: 185,
            ),
            const Gap(12.0),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Dried Apricots',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Gap(8.0),
                const Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      r'$9.43',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                        height: 1.0,
                      ),
                    ),
                    Gap(8.0),
                    Text(
                      '/ 300g',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
                const Gap(8.0),
                const Text(
                  '★ ★ ★ ★ ☆',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  ),
                ),
                const Gap(16.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                  onPressed: () {},
                  child: const Row(
                    children: [
                      Icon(
                        Icons.shopping_cart,
                        color: Color(0xFF4a2c17),
                      ),
                      Gap(16.0),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          color: Color(0xFF4a2c17),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
            const Gap(18.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                elevation: 0,
                shape: const CircleBorder(),
                padding: const EdgeInsets.all(10.0),
              ),
              onPressed: () {},
              child: const Icon(
                Icons.favorite,
                size: 32.0,
                color: Colors.red,
              ),
            ),
          ],
        )
      ],
    );
  }
}