import 'package:flutter/material.dart';
import 'package:number_generator_game/common/my_snackbar.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key, required this.title, required this.color});
  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: GestureDetector(
        onTap:
            () => {showMySnackBar(context: context, message: '$title tapped')},
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: color,
          child: Center(child: Text(title)),
        ),
      ),
    );
  }
}
