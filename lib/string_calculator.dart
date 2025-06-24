class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0; // Return 0 for empty string
    }
    return int.parse(input); //handle single number input
  }
}
