import 'package:calculator_app/utils/build_buttons.dart';
import 'package:calculator_app/utils/build_result.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      bottom: false,
      child: Column(
        children: <Widget>[
          Expanded(
            child: SizedBox(
              width: double.infinity,
              child: buildResult(context),
            ),
          ),
          Expanded(
            flex: 2,
            child: buildButtons(context),
          )
        ],
      ),
    );
  }
}
