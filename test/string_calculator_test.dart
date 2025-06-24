import 'package:string_calculator/string_calculator.dart';
import 'package:test/test.dart';

void main() {
  final calculator = StringCalculator();

  test('Empty string should return 0', () {
    expect(calculator.add(''), 0);
  });

  test('Single number should return its value', () {
    expect(calculator.add('1'), 1);
  });

  test('Two comma-separated numbers should return their sum', () {
    expect(calculator.add('1,5'), 6);
  });

  test('Support newline as delimiter between numbers', () {
    expect(calculator.add('1\n2,3'), 6);
  });
}
