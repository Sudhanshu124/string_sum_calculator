import 'package:string_sum_calculator/string_sum_calculator.dart';
import 'package:test/test.dart';

void main() {
  late StringSumCalculator calculate;
  setUp(() {
    calculate = StringSumCalculator();
  });
  group('Sum of numbers will be calculated here', () {
    //For empty string
    test('Return 0 for empty string', () {
      expect(calculate.add(''), equals(0));
    });

    //Test case if there is only one number
    test('Test case if there is only one number and that is not 0', () {
      expect(calculate.add('2'), equals(2));
    });

    //For more than 1  number
    test('If there are more than 1 number then sum of all number', () {
      expect(calculate.add('1,2,3'), equals(6));
    });

    //If number are in multiple line (\n) format
    test('Test if numbers are in different line', () {
      expect(calculate.add('1\n3,4'), equals(8));
    });

    //If number is negative
    test('should throw exception for negative numbers', () {
      expect(() => calculate.add('-1,2'), throwsA(isA<Exception>()));

      expect(
        () => calculate.add('-1,2'),
        throwsA(
          predicate(
            (e) => e.toString().contains('negative numbers not allowed -1'),
          ),
        ),
      );
    });

    test('should show all negative numbers in exception', () {
      expect(
        () => calculate.add('-1,2,-3'),
        throwsA(predicate((e) => e.toString().contains('-1,-3'))),
      );
    });
  });
}
