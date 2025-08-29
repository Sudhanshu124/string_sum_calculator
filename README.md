# String Sum Calculator

A Dart library for calculating the sum of numbers from a formatted string with support for custom delimiters.

## Features

- Sum numbers from comma-separated strings
- Support for custom delimiters (e.g., `//;\n1;2;3`)
- Handles newlines as delimiters
- Validates against negative numbers
- Returns 0 for empty strings

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd string_sum_calculator
```

2. Install dependencies:
```bash
dart pub get
```

## Usage

```dart
import 'package:string_sum_calculator/string_sum_calculator.dart';

void main() {
  var calculator = StringSumCalculator();
  
  // Basic usage
  print(calculator.add("1,2,3")); // Output: 6
  
  // With newlines
  print(calculator.add("1\n2,3")); // Output: 6
  
  // Custom delimiter
  print(calculator.add("//;\n1;2;3")); // Output: 6
  
  // Empty string
  print(calculator.add("")); // Output: 0
}
```

## Running Tests

```bash
dart test
```

## Project Structure

- `lib/` - Contains the main library code
- `test/` - Contains unit tests
- `pubspec.yaml` - Project dependencies and metadata
