import 'package:flutter/material.dart';

import 'cart.dart';
import 'product_quantity.dart';

class ScrollCart extends StatelessWidget {
  const ScrollCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double heightWithoutappBarNavBar = MediaQuery.of(context).size.height;
    return DraggableScrollableSheet(
      snap: true,
      expand: true,
      builder: (_, scrollController) {
        return Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(24.0),
              topRight: Radius.circular(24.0),
            ),
            color: Color(0xff2e2e2e),
          ),
          child: ListView(
            controller: scrollController,
            children: [
              const ProductQuantity(),
              Cart(heightWithoutappBarNavBar: heightWithoutappBarNavBar),
            ],
          ),
        );
      },
      initialChildSize: 0.38,
      minChildSize: 0.38,
    );
  }
}
