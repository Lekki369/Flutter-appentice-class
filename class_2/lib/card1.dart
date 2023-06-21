import 'package:flutter/material.dart';

import 'theme.dart';

class Card1 extends StatelessWidget {
  final Card11 product;

  const Card1({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(
              product.image,
            ),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(product.category),
                  Text(product.title),
                ],
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(product.description),
                  Text(product.chef),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
