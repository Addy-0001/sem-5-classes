import 'package:flutter/material.dart';

class MediaQueryView extends StatelessWidget {
  const MediaQueryView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.greenAccent,
      body: Container(
          height: MediaQuery.of(context).size.height * .5,
          width: MediaQuery.of(context).size.width ,
          color: Colors.amber,
        ),
    );
  }
}