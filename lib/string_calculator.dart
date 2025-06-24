class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0; // Return 0 for empty string
    }

    // Handle cases with multiple numbers separated by commas
    if (input.contains(',')) {
      final parts = input.split(',');
      return parts.map(int.parse).reduce((a, b) => a + b); // Sum the numbers
    }

    return int.parse(input); //handle single number input
  }
}
