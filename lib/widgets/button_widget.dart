import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  // widget receive a text and a callback function
  const ButtonWidget({
    Key? key,
    required this.text,
  }) : super(key: key);

  final String text;

  @override
  Widget build(BuildContext context) {
    final Color? color = getTextColor(text, context);

    return Expanded(
      child: Container(
        height: double.infinity,
        margin: const EdgeInsets.all(6),
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            text,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  color: color,
                ),
          ),
        ),
      ),
    );
  }

  Color? getTextColor(String text, BuildContext context) {
    switch (text) {
      case '÷':
      case '×':
      case '−':
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
