class StringSumCalculator {
  int add(String s) {
    if (s.isEmpty) {
      return 0;
    }
    String separator = ',';
    String numbersToProcess = s;
    if (s.startsWith('//')) {
      int indexOfSeparatorEnd = s.indexOf('\n');
      separator = s.substring(2, indexOfSeparatorEnd);
      numbersToProcess = s.substring(indexOfSeparatorEnd + 1);
    }
    List<int> multipleNumber = _parseNumber(numbersToProcess, separator);
    _validateNumbers(multipleNumber);
    return multipleNumber.isEmpty ? 0 : multipleNumber.reduce((a, b) => a + b);
  }

  /* Function to format string according to our requirement*/
  List<int> _parseNumber(String numbers, String separator) {
    String numberWithoutDelimiters = numbers.replaceAll('\n', separator);
    return numberWithoutDelimiters
        .split(separator)
        .where((nums) => nums.isNotEmpty)
        .map((nums) => int.parse(nums))
        .toList();
  }


/* Check whether number is positive or negative */
  void _validateNumbers(List<int> numbers) {
    List<int> negatives = numbers.where((nums) => nums < 0).toList();
    if (negatives.isNotEmpty) {
      throw Exception('negative numbers not allowed ${negatives.join(',')}');
    }
  }
}
