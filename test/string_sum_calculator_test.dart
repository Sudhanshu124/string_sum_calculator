import 'package:string_sum_calculator/string_sum_calculator.dart';
import 'package:test/test.dart';

void main() {
  late StringSumCalculator calculate;
  setUp((){
    calculate = StringSumCalculator();
  });
  group('Sum of number will be calculated here', (){
    test('Return 0 for empty string', (){
      expect(calculate.add(''),equals(0) );
    });
  });
}
