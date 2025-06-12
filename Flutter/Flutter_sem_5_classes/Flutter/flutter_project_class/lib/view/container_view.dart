import 'package:flutter/material.dart';

class ContainerView extends StatelessWidget {
  const ContainerView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Container(
          alignment: Alignment.centerRight,
            child: Container( 
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.amberAccent,
                border: Border.all(
                  color: Colors.black,
                  width: 2,
                )
              ),
              alignment: Alignment.center,
              child: const Text('I am a Container'),
              
            ),
          ),
        ),
      );
  }
}