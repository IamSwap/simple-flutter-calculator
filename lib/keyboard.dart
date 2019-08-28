import 'package:calculator/result.dart';
import 'package:expressions/expressions.dart';
import 'package:flutter/material.dart';

class KeyBoard extends StatefulWidget {
  final Result result;

  KeyBoard({@required this.result});

  @override
  _KeyBoardState createState() => _KeyBoardState(result: result);
}

class _KeyBoardState extends State<KeyBoard> {
  final Result result;

  _KeyBoardState({@required this.result});

  void updateResult(String btnText) {
    String displayResult = (result.result == null) ? "" : result.result;

    result.updateResult(displayResult + btnText);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                child: Text('7'),
                onPressed: () {
                  updateResult('7');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('8'),
                onPressed: () {
                  updateResult('8');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('9'),
                onPressed: () {
                  updateResult('9');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('/'),
                onPressed: () {
                  updateResult('/');
                },
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                child: Text('4'),
                onPressed: () {
                  updateResult('4');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('5'),
                onPressed: () {
                  updateResult('5');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('6'),
                onPressed: () {
                  updateResult('6');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('*'),
                onPressed: () {
                  updateResult('*');
                },
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                child: Text('3'),
                onPressed: () {
                  updateResult('3');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('2'),
                onPressed: () {
                  updateResult('2');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('1'),
                onPressed: () {
                  updateResult('1');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('-'),
                onPressed: () {
                  updateResult('-');
                },
              ),
            ),
          ],
        ),
        Row(
          children: <Widget>[
            Expanded(
              child: OutlineButton(
                child: Text('C'),
                onPressed: () {
                  widget.result.updateResult("");
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('0'),
                onPressed: () {
                  updateResult('0');
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('='),
                onPressed: () {
                  Expression expression = Expression.parse(result.result);

                  final evaluator = const ExpressionEvaluator();
                  var r = evaluator.eval(expression, {});

                  result.updateResult(r.toString());
                },
              ),
            ),
            Expanded(
              child: OutlineButton(
                child: Text('+'),
                onPressed: () {
                  updateResult('+');
                },
              ),
            ),
          ],
        ),
      ],
    );
  }
}
