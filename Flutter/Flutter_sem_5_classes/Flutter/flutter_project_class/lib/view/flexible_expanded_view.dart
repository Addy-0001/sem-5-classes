import 'package:flutter/material.dart';
import 'package:flutter_project_class/common/my_snackbar.dart';

class FlexibleExpandedView extends StatelessWidget {
  const FlexibleExpandedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: GestureDetector(
              // ignore: avoid_print
              onTap: () {
                showMySnackBar(context: context, message: 'Container 1');
              },
              child: Container(
                // height: 400,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.greenAccent,
                child: Text('Container ', style: TextStyle(fontSize: 30),),
              ),
            ),
          ),
          Expanded( // flex.loose + flex.tight ko byproduct
            child: GestureDetector(
              // ignore: avoid_print
              onDoubleTap: () {
                showMySnackBar(context: context, message: 'Container 2',color: Colors.red);
              },
              child: Container(
                // height: 300,
                alignment: Alignment.center,
                width: double.infinity,
                color: Colors.amber,
                child: Text('Container 2', style: TextStyle(fontSize: 30),),
              ),
            ),
          ),
        ],
      ),
    );
  }
}