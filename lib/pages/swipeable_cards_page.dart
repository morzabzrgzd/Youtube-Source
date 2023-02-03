import 'dart:math';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:swipeable_card_stack/swipeable_card_stack.dart';

class SwipeableCardsPage extends StatelessWidget {
  const SwipeableCardsPage({super.key});

  @override
  Widget build(BuildContext context) {
    SwipeableCardSectionController cardSectionController =
        SwipeableCardSectionController();
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text(
          'Swipeable Cards Stack',
          style: GoogleFonts.montserrat(),
        ),
      ),
      body: Column(
        children: [
          SwipeableCardsSection(
            cardController: cardSectionController,
            context: context,
            items: const [
              CardView(
                index: 0,
              ),
              CardView(
                index: 1,
              ),
              CardView(
                index: 2,
              ),
            ],
            onCardSwiped: (direct, index, card) {
              cardSectionController.addItem(CardView(index: index));
            },
            enableSwipeUp: true,
            enableSwipeDown: true,
          )
        ],
      ),
    );
  }
}

class CardView extends StatelessWidget {
  const CardView({
    super.key,
    required this.index,
  });

  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: Colors.grey.shade800,
            image: DecorationImage(
              fit: BoxFit.cover,
              image: NetworkImage(
                'https://source.unsplash.com/random?sig=$index',
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://source.unsplash.com/random?sig=$index+1',
                ),
              ),
              const SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Jahan Swinderson',
                    style: GoogleFonts.montserrat(
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'This is subtitle',
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}
