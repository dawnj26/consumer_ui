import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../components/categories.dart';
import '../components/hero_content.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // var screenH = MediaQuery.of(context).size.height;
    // var screenW = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.shopping_bag_outlined),
          )
        ],
      ),
      body: const Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Hello, User",
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.w300,
              ),
            ),
            Gap(8.0),
            Text(
              "What's today's taste? 😋",
              style: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            Gap(20.0),
            Categories(),
            Gap(40.0),
            ProductHighlight(),
          ],
        ),
      ),
    );
  }
}
