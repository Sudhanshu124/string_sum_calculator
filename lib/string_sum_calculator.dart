class StringSumCalculator {
  int add(String s) {
    if (s.isEmpty) {
      return 0;
    }
    String numberWithoutNewLine = s.replaceAll('\n',',');
    List<String> multipleNumber = numberWithoutNewLine.split(',');
    int sumOfNumber = 0;
    for (String number in multipleNumber) {
      sumOfNumber = sumOfNumber + int.parse(number);
    }
    return sumOfNumber;
  }
}
