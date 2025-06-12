import 'package:flutter/material.dart';
import 'package:flutter_project_class/common/my_card.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child:Column(
          children: [
            for(int i = 1; i <=10; i++) ...{
              if(i %2 ==0 )...{
                MyCard(title: 'Card $i', color: Colors.amber)
              }
              else...{
                MyCard(title: 'Card $i', color: Colors.blue)
              }
            }
          ],
        ),
      ),
    );
  }
}

