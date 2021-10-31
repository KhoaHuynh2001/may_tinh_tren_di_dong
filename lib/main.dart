import 'dart:convert';

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
  String His = "";
  String TextDis = "0";
  Widget buildButton(String buttonText, double buttonSize, Color buttonColor) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(
          height: 50,
          width: 50,
          child: TextButton(
            onPressed: () {},
            child: Text(buttonText,
                style: TextStyle(fontSize: buttonSize, color: buttonColor)),
            style: TextButton.styleFrom(
                side:
                    BorderSide(style: BorderStyle.solid, color: Colors.black)),
          ),
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(50, 12, 50, 0),
                  child: Container(
                      decoration: const BoxDecoration(
                        color: Colors.black,
                      ),
                      alignment: const Alignment(1, 1),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              His,
                              style:
                                  TextStyle(fontSize: 48, color: Colors.white),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(right: 20),
                            child: Text(
                              TextDis,
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            ),
                          ),
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('%', 24, Colors.black),
                    buildButton('C', 24, Colors.black),
                    buildButton('←', 24, Colors.black),
                    buildButton('/', 24, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('7', 24, Colors.black),
                    buildButton('8', 24, Colors.black),
                    buildButton('9', 24, Colors.black),
                    buildButton('x', 24, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('4', 24, Colors.black),
                    buildButton('5', 24, Colors.black),
                    buildButton('6', 24, Colors.black),
                    buildButton('-', 24, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('1', 24, Colors.black),
                    buildButton('2', 24, Colors.black),
                    buildButton('3', 24, Colors.black),
                    buildButton('+', 24, Colors.black)
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    buildButton('+/-', 24, Colors.black),
                    buildButton('0', 24, Colors.black),
                    buildButton(',', 24, Colors.black),
                    buildButton('=', 24, Colors.black)
                  ],
                ),
              ),
            ],
          ),
        ));
  }
}
