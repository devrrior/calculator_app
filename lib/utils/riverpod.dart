import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/calculator.dart';

class CalculatorNotifier extends StateNotifier<Calculator> {
  CalculatorNotifier() : super(const Calculator());

  void append(String buttonText) {
    final equation = () {
      return state.equation == '0' ? buttonText : state.equation + buttonText;
    }();

    state = state.copy(equation: equation);
  }
}

final calculatorNotifier =
    StateNotifierProvider<CalculatorNotifier, Calculator>(
        (ref) => CalculatorNotifier());
