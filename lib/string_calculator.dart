class StringCalculator {
  int add(String input) {
    if (input.isEmpty) {
      return 0; // Return 0 for empty string
    }

    // Handle cases with multiple numbers separated by commas or newlines
    final parts = input.split(RegExp('[,\n]'));
    return parts.map(int.parse).reduce((a, b) => a + b);
  }
}
