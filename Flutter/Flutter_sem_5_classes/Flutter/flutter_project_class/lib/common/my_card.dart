import 'package:flutter/material.dart';
import 'package:flutter_project_class/common/my_snackbar.dart';

class MyCard extends StatelessWidget {
  const MyCard({
    super.key,required this.title,required this.color
  });

  final String title;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: GestureDetector(
        onTap: (){
          showMySnackBar(context: context, message: '$title tapped');
        },
        child: Card(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10)
          ),
          color: color,
          child: Center(
            child: Text(
              title,
              style: TextStyle(fontSize: 20),
              ),
            ),
        ),
      ),
    );
  }
}