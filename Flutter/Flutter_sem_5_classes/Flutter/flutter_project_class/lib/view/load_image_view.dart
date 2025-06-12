import 'package:flutter/material.dart';

class LoadImageView extends StatelessWidget {
  const LoadImageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber[50],
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 400, 
              width:400, 
              child: Image.asset('assets/images/a.jpeg')),
            SizedBox(
              height: 400, 
              width:400, 
              child: Image.network(
                'https://www.aljazeera.com/wp-content/uploads/2022/12/SSS10784_1.jpg?resize=1170%2C780&quality=80'
              )),
          ],
        ) 
      ),
    );
  }
}