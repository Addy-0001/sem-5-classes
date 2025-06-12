import 'package:quote_generator/model/quote_model.dart';

class QuoteViewmodel {
  final List <QuoteModel> _quotes = [
    QuoteModel(quote: "Believe in yourself."),
    QuoteModel(quote: "You are stronger than you think."),
    QuoteModel(quote: "Keep pushing yourself."),
    QuoteModel(quote: "Never give up Never what?"),
    QuoteModel(quote: "Dream big, Start small. Act NOW!!!."),

  ];

  QuoteModel getRandomQuote(){
    _quotes.shuffle();
    return _quotes.first;
  }
}