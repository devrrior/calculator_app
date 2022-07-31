import 'package:calculator_app/widgets/buttons_row_widget.dart';
import 'package:flutter/material.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 36, bottom: 48, left: 30, right: 30),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(50),
          topRight: Radius.circular(50),
        ),
      ),
      width: double.infinity,
      child: Column(
        children: const <Widget>[
          ButtonsRowWidget(
            buttonText1: 'AC',
            buttonText2: '⁺∕₋',
            buttonText3: '%',
            buttonText4: '÷',
          ),
          ButtonsRowWidget(
            buttonText1: '7',
            buttonText2: '8',
            buttonText3: '9',
            buttonText4: '⨯',
          ),
          ButtonsRowWidget(
            buttonText1: '4',
            buttonText2: '5',
            buttonText3: '6',
            buttonText4: '-',
          ),
          ButtonsRowWidget(
            buttonText1: '1',
            buttonText2: '2',
            buttonText3: '3',
            buttonText4: '+',
          ),
          ButtonsRowWidget(
            buttonText1: 'del',
            buttonText2: '0',
            buttonText3: '.',
            buttonText4: '=',
          ),
        ],
      ),
    );
  }
}
