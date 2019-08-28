import 'package:calculator/display.dart';
import 'package:calculator/keyboard.dart';
import 'package:calculator/result.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(builder: (_) => Result()),
      ],
      child: Consumer<Result>(
        builder: (context, result, _) {
          return MaterialApp(
            title: 'Flutter Demo',
            home: MyHomePage(
              result: result,
            ),
          );
        },
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final Result result;

  const MyHomePage({@required this.result});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Column(
        children: <Widget>[
          Display(
            result: widget.result,
          ),
          Expanded(
            child: KeyBoard(
              result: widget.result,
            ),
          ),
        ],
      ),
    );
  }
}
