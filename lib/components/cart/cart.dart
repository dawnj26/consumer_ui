import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import 'cart_footer.dart';
import 'cart_header.dart';
import 'cart_item.dart';

class Cart extends StatelessWidget {
  const Cart({
    super.key,
    required this.heightWithoutappBarNavBar,
  });

  final double heightWithoutappBarNavBar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children: [
          SizedBox(
            height: heightWithoutappBarNavBar * 0.53,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CartHeader(),
                CartItem(
                  imgPath: 'assets/images/orange_product.png',
                  name: 'Dried Apricots',
                  quantity: 1,
                ),
                CartItem(
                  imgPath: 'assets/images/red_product.png',
                  name: 'Dried Cherries',
                  quantity: 1,
                ),
                CartItem(
                  imgPath: 'assets/images/violet_product.png',
                  name: 'Dried plums',
                  quantity: 3,
                ),
              ],
            ),
          ),
          const Gap(18.0),
          const CartFooter()
        ],
      ),
    );
  }
}
