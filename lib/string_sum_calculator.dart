class StringSumCalculator {
  int add(String s) {
    if (s.isEmpty) {
      return 0;
    }
    List<int> multipleNumber = _parseNumber(s);
    return (multipleNumber.reduce((a, b) => a + b));
  }

/* Function to format string according to our requirement*/
  List<int> _parseNumber(String numbers) {
    String numberWithoutDelimiters = numbers.replaceAll('\n', ',');
    return numberWithoutDelimiters
        .split(',')
        .where((nums) => nums.isNotEmpty)
        .map((nums) => int.parse(nums))
        .toList();
  }
}
