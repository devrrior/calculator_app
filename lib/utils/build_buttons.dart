import 'package:flutter/material.dart';

import 'button_widget.dart';

class Buttons extends StatelessWidget {
  const Buttons({Key? key}) : super(key: key);

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
        children: <Widget>[
          buildButtonRow('AC', '⁺∕₋', '%', '÷'),
          buildButtonRow('7', '8', '9', '×'),
          buildButtonRow('4', '5', '6', '−'),
          buildButtonRow('1', '2', '3', '+'),
          buildButtonRow('r', '0', '.', '='),
        ],
      ),
    );
  }
}

Widget buildButtonRow(
    String button1, String button2, String button3, String button4) {
  final texts = [button1, button2, button3, button4];

  return Expanded(
    child: Row(
      children: [
        // iterate texts and create buttons
        for (final text in texts) ButtonWidget(text: text),
      ],
    ),
  );
}
