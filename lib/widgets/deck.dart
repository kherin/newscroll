import 'package:flutter/material.dart';

// models
import '../models/news.dart';

// tcard
import 'package:tcard/tcard.dart';

class Deck extends StatefulWidget {
  final List<Widget> cards;
  const Deck(this.cards);

  @override
  State<Deck> createState() => _DeckState();
}

class _DeckState extends State<Deck> {
  final TCardController _controller = TCardController();

  @override
  Widget build(BuildContext context) {
    return TCard(
      size: const Size(400, 600),
      cards: widget.cards,
      controller: _controller,
      onForward: (index, info) {
        if (index == widget.cards.length) {
          _controller.reset();
        }
      },
    );
  }
}
