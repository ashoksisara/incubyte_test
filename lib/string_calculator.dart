class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0; // Return 0 for empty string
    }

    // Handle single number case
    List<String> delimiters = [',', '\n'];

    // Check for custom delimiter at the start
    if (input.startsWith('//')) {
      final delimiterLineEnd = input.indexOf('\n');
      final customDelimiter = input.substring(2, delimiterLineEnd);
      delimiters = [customDelimiter];
      input = input.substring(delimiterLineEnd + 1);
    }

    final parts = input.split(RegExp(delimiters.map(RegExp.escape).join('|')));
    final numbers = parts.map(int.parse).toList();

    // Check for negatives
    final negatives = numbers.where((n) => n < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }

    return numbers.reduce((a, b) => a + b); // Return the sum of the numbers
  }
}
