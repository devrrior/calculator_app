class Operator {
  static bool isOperator(String buttonText, {bool hasEquals = false}) {
    final operators = [
      '+',
      '-',
      '÷',
      '×',
      '.',
      if (hasEquals) ...['=']
    ];

    return operators.contains(buttonText);
  }

  static bool isOperatorAtEnd(String equation) {
    return equation.isNotEmpty
        ? Operator.isOperator(equation.substring(equation.length - 1))
        : false;
  }
}
