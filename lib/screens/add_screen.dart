import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/cart/draggable_sheet.dart';
import '../components/cart/product_capacity.dart';
import '../components/cart/product_image.dart';
import '../components/cart/product_info.dart';

class AddScreen extends StatelessWidget {
  const AddScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff59255),
      appBar: AppBar(
        backgroundColor: const Color(0xfff59255),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      body: const Stack(
        children: [
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                ProductImage('assets/images/orange_product.png'),
                Gap(30.0),
                ProductInfo(),
                Gap(12.0),
                ProductCapacity(),
              ],
            ),
          ),
          ScrollCart(),
        ],
      ),
    );
  }
}
