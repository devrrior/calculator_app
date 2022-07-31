import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  // widget receive a text and a callback function
  const ButtonWidget({
    Key? key,
    required this.buttonText,
    required this.onClicked,
    required this.onClickedLong,
  }) : super(key: key);

  final String buttonText;
  final VoidCallback onClicked;
  final VoidCallback onClickedLong;

  @override
  Widget build(BuildContext context) {
    final Color? color = getTextColor(buttonText, context);

    return Expanded(
      child: Container(
        height: double.infinity,
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: onClicked,
          onLongPress: onClickedLong,
          child: buttonText != 'del'
              ? Text(
                  buttonText,
                  style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                        color: color,
                      ),
                )
              : Icon(
                  Icons.backspace,
                  size: 24,
                  color: color,
                ),
        ),
      ),
    );
  }

  Color? getTextColor(String text, BuildContext context) {
    switch (text) {
      case '÷':
      case '⨯':
      case '-':
      case '+':
      case '=':
        return const Color(0xFFEB6666);
      case 'AC':
      case '%':
      case '⁺∕₋':
        return const Color(0xFF24F4CD);
      default:
        return Theme.of(context).textTheme.bodyMedium?.color;
    }
  }
}
