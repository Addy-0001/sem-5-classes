
import 'package:flutter/material.dart';
import 'package:quote_generator/model/quote_model.dart';
import 'package:quote_generator/viewmodel/quote_viewmodel.dart';

class QuoteView extends StatefulWidget {
  const QuoteView({super.key});

  @override
  State<QuoteView> createState() => _QuoteViewState();
}

class _QuoteViewState extends State<QuoteView> {

  final QuoteViewmodel _viewmodel = QuoteViewmodel();

  QuoteModel? currentQuote;

  void generateQuote(){
    setState(() {
      currentQuote = _viewmodel.getRandomQuote();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Quote Generator"),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            RichText(
              textAlign: TextAlign.center,
              text: TextSpan(
                text: currentQuote?.quote?? "Press the button to get a random inspiration",
                style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold, // the styling done in the main part is inherited by the children part which is in code line number 51 in this case.
                  fontStyle: FontStyle.italic, // same the children inherit this 
                  color: const Color.fromARGB(222, 163, 39, 72), //the color in the parent is although inherited by the children in this case the child has its own colour so doesn't show the parent color
                ),
                children: <TextSpan> [
                  TextSpan(
                    text: '\n \n- Be inspired!',
                    style: TextStyle(
                      color: Colors.blueAccent // children ko chuttai property
                    ),
                  )
                ]
              ),
            ),
              SizedBox(height: 20,),
              ElevatedButton(onPressed: generateQuote,
              child: Text("Generate Quote"),)
            ],
          ),),
      ),
    );
  }
}