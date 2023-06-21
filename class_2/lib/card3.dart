// ignore_for_file: avoid_print

import 'package:class_2/theme.dart';
import 'package:flutter/material.dart';

class Card3 extends StatelessWidget {
  final Card33 card33;
  const Card3({super.key, required this.card33});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(card33.backgroundImage),
          ),
        ),
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.black.withOpacity(0.6),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Icon(
                    Icons.book,
                    size: 30,
                  ),
                  Text(
                    'Recipe Trends',
                    style: FooderlichTheme.darkTextTheme.displayMedium,
                  ),
                ],
              ),
            ),
            Center(
              child: Wrap(
                spacing: 12,
                children: [
                  ...card33.trends.map(
                    (value) => Chip(
                      label: Text(
                        value.recipesTrends,
                        style: FooderlichTheme.lightTextTheme.bodyMedium,
                      ),
                      backgroundColor: Colors.black.withOpacity(0.7),
                      onDeleted: () {
                        print('delete');
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
