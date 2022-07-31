import 'package:calculator_app/widgets/buttons_widget.dart';
import 'package:calculator_app/widgets/result_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: const <Widget>[
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: ResultWidget(),
            ),
          ),
          Expanded(
            flex: 2,
            child: ButtonsWidget(),
          )
        ],
      ),
    );
  }
}
