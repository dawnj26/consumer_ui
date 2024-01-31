import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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

class ScrollCart extends StatelessWidget {
  const ScrollCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double heightWithoutappBarNavBar = MediaQuery.of(context).size.height;
    return Expanded(
      child: DraggableScrollableSheet(
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
      ),
    );
  }
}

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

class CartFooter extends StatelessWidget {
  const CartFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          '3 items',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        Container(
          decoration: BoxDecoration(
            border: Border.all(
              color: const Color(0xffffcd85),
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Row(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.0,
                ),
                child: Text(
                  r'$38.25',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  color: const Color(0xffffcd85),
                ),
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                child: const Text('Buy now'),
              ),
            ],
          ),
        )
      ],
    );
  }
}

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

class CartHeader extends StatelessWidget {
  const CartHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.shopping_bag_outlined,
              color: Colors.white,
            ),
            Gap(10.0),
            Text(
              'Cart',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
        Image.asset(
          'assets/images/red_product.png',
          height: 32,
        ),
      ],
    );
  }
}

class ProductQuantity extends StatelessWidget {
  const ProductQuantity({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(24.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color: Colors.grey.shade300,
                ),
                width: 100,
                height: 8,
              ),
            ],
          ),
          const Gap(10),
          const Text(
            'Quantity (300g)',
            style: TextStyle(
              fontSize: 18.0,
            ),
          ),
          const Gap(8.0),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              QuantityCounter(),
              Text(
                r'$9.43',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
          const Gap(8.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    elevation: 0,
                    backgroundColor: const Color(0xffffcd85),
                    foregroundColor: const Color(0xff4b2d17),
                  ),
                  child: const Text('Add to cart'),
                ),
              ),
              const Gap(16.0),
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class QuantityCounter extends StatelessWidget {
  const QuantityCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.grey),
        borderRadius: BorderRadius.circular(32.0),
      ),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              side: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.arrow_left,
            ),
          ),
          const Gap(12),
          const Text(
            '1',
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Gap(12),
          IconButton(
            onPressed: () {},
            style: IconButton.styleFrom(
              side: const BorderSide(
                color: Colors.transparent,
              ),
            ),
            icon: const Icon(
              Icons.arrow_right,
            ),
          ),
        ],
      ),
    );
  }
}

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

class SquareButton extends StatelessWidget {
  const SquareButton({
    required this.name,
    required this.value,
    super.key,
  });

  final String name;
  final String value;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        side: const BorderSide(
          color: Color(0xffe9e1d5),
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(8),
          ),
        ),
        padding: const EdgeInsets.all(16.0),
        foregroundColor: const Color(0xffe9e1d5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(name),
          const Gap(4.0),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Dried Apricots',
          style: TextStyle(
            fontSize: 28.0,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Artificial Selection  •  Taste sweet',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12.0,
              ),
            ),
            Text(
              '★ ★ ★ ★ ★',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class ProductImage extends StatelessWidget {
  const ProductImage(this.imgPath, {super.key});

  final String imgPath;

  @override
  Widget build(BuildContext context) {
    const double h = 180;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Image.asset(imgPath, height: h),
        Transform.flip(
          flipY: true,
          child: Image.asset(imgPath, height: h),
        ),
      ],
    );
  }
}
