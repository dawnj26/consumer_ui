import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

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
