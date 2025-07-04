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

  test('Custom delimiter defined with // should be supported', () {
    expect(calculator.add('//;\n1;2'), 3);
  });

  test('Throw exception listing all negative numbers', () {
    expect(() => calculator.add('1,-2,3,-5'), throwsA(predicate((e) =>
    e is Exception &&
        e.toString().contains('negative numbers not allowed -2,-5'))));
  });
}
