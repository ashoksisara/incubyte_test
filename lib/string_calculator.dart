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

    // Split using all valid delimiters
    final pattern = delimiters.map(RegExp.escape).join('|');
    final parts = input.split(RegExp(pattern));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
