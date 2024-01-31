import 'package:flutter/material.dart';

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
