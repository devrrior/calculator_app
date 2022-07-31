import 'package:calculator_app/utils/riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'button_widget.dart';

class ButtonsRowWidget extends ConsumerWidget {
  const ButtonsRowWidget({
    Key? key,
    required this.buttonText1,
    required this.buttonText2,
    required this.buttonText3,
    required this.buttonText4,
  }) : super(key: key);

  final String buttonText1, buttonText2, buttonText3, buttonText4;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final buttonTexts = [buttonText1, buttonText2, buttonText3, buttonText4];
    final calculator = ref.read(calculatorProvider.notifier);

    return Expanded(
      child: Row(
        children: [
          // iterate texts and create buttons
          for (final buttonText in buttonTexts)
            ButtonWidget(
                buttonText: buttonText,
                onClicked: () {
                  switch (buttonText) {
                    case 'AC':
                      calculator.reset();
                      break;
                    case '=':
                      calculator.equals();
                      break;
                    case 'del':
                      calculator.delete();
                      break;
                    default:
                      calculator.append(buttonText);
                  }
                },
                onClickedLong: () {
                  if (buttonText == 'del') calculator.reset();
                }),
        ],
      ),
    );
  }
}
