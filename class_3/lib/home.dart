import 'package:flutter/material.dart';

import 'components/components.dart';

import 'theme.dart';

class Home extends StatefulWidget {
  final theme = FooderlichTheme.dark();
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;

  final List pages = [
    Card1(product: Card11.cards[0]),
    Card2(card: Card22.card2),
    Card3(card33: Card33.card33)
  ];

  void _ontapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Foodlich',
            style: widget.theme.textTheme.headlineLarge,
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: _selectedIndex,
            onTap: _ontapped,
            selectedItemColor: widget.theme.textSelectionTheme.selectionColor,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.explore,
                ),
                label: 'Explore',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.book,
                ),
                label: 'Recpies',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.list,
                ),
                label: 'To Buy',
              ),
            ]),
        body: pages[_selectedIndex]);
  }
}
