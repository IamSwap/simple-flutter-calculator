import 'package:calculator/result.dart';
import 'package:flutter/material.dart';

class Display extends StatelessWidget {
  final Result result;

  const Display({@required this.result});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(20.0),
      child: Text(
        (result.result == null) ? '0' : result.result,
        style: TextStyle(fontSize: 24.0),
        textAlign: TextAlign.right,
      ),
    );
  }
}
