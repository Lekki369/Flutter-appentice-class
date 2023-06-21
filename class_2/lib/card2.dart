import 'package:flutter/material.dart';

import 'theme.dart';

class Card2 extends StatelessWidget {
  final Card22 card;
  const Card2({super.key, required this.card});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(16),
        constraints: const BoxConstraints.expand(width: 350, height: 450),
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(card.backgroundImage),
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Stack(
          children: [
            AuthorCardWidget(card: card),
            Align(
              alignment: Alignment.centerLeft,
              child: RotatedBox(
                quarterTurns: 3,
                child: Text(
                  card.sideline,
                  style: FooderlichTheme.lightTextTheme.displayLarge,
                ),
              ),
            ),
            Align(
              alignment: Alignment.bottomRight,
              child: Text(
                card.endline,
                style: FooderlichTheme.lightTextTheme.displayLarge,
              ),
            )
          ],
        ),
      ),
    );
  }
}

class AuthorCardWidget extends StatefulWidget {
  final Card22 card;
  const AuthorCardWidget({super.key, required this.card});

  @override
  State<AuthorCardWidget> createState() => _AuthorCardWidgetState();
}

class _AuthorCardWidgetState extends State<AuthorCardWidget> {
  bool _isLiked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CircleAvatar(
          radius: 30,
          foregroundImage: AssetImage(widget.card.profileImage),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.card.authorName,
              style: FooderlichTheme.lightTextTheme.displayMedium,
            ),
            Text(
              widget.card.title,
              style: FooderlichTheme.lightTextTheme.displaySmall,
            )
          ],
        ),
        IconButton(
          onPressed: () async {
            setState(() {
              _isLiked = !_isLiked;
            });

            final snackBar = SnackBar(
              content: _isLiked
                  ? const Text('You Liked')
                  : const Text('You Disliked'),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: Icon(
            Icons.favorite_border_outlined,
            color: _isLiked ? Colors.red : Colors.grey[500],
            size: 30,
          ),
        ),
      ],
    );
  }
}
