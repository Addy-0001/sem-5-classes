import 'package:flutter/material.dart';
import 'package:number_generator_game/common/my_card.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              for (int i = 1; i < 11; i++)
                if (i % 2 == 0)
                  MyCard(title: 'Card $i', color: Colors.amber)
                else
                  MyCard(title: 'Card $i', color: Colors.lightBlue),
            ],
          ),
        ),
      ),
    );
  }
}
