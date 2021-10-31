import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorMoblie(title: 'Máy Tính'),
    );
  }
}

class CalculatorMoblie extends StatefulWidget {
  const CalculatorMoblie({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<CalculatorMoblie> createState() => _CalculatorMoblieState();
}

class _CalculatorMoblieState extends State<CalculatorMoblie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Column(
          children: [
            TextField(
              // enableInteractiveSelection: false, // will disable paste operation
              // focusNode: new AlwaysDisabledFocusNode(),
              readOnly: true,
              decoration: const InputDecoration(
                  border: OutlineInputBorder(), hintText: "0"),
            )
          ],
        ));
  }
}
