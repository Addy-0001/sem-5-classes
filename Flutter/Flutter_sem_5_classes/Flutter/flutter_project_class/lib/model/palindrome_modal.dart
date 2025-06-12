class PalindromeModal {
  int value;

  PalindromeModal({required this.value});

  bool checkPalindrome() {
    int original = value;
    int reversed = 0;

    while (value > 0) {
      int digit = value % 10;
      reversed = reversed * 10 + digit;
      value ~/= 10;
    }

    return (original == reversed);
  }

}