class SimpleInterestModal {
  final int principal;
  final int time;
  final int rate;

  SimpleInterestModal({required this.principal,required this.rate,required this.time});

  double simpleInterest(){
    return ( principal * time * rate) / 100;
  }
}