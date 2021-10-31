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
        ),
        body: Column(
          children: [
            Row(
              mainAixsAlignment: MainAxisAlignment.center,
              children: <Widget>
              Container(
                width: MediaQuery.of(Context).size.width *.75,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                    buildButton("C",1,Colors.redAccent),
                    buildButton("⨞",1,Colors.blue),
                    buildButton("÷",1,Colors.blue),
                  ]
                ),
                TableRow(
                      children: [
                    buildButton("7",1,Colors.black54),
                    buildButton("8",1,Colors.black54),
                    buildButton("9",1,Colors.black54),
                  ]
                ),

                TableRow(
                      children: [
                    buildButton("4",1,Colors.black54),
                    buildButton("5",1,Colors.black54),
                    buildButton("6",1,Colors.black54),
                  ]
                ),
                
                 TableRow(
                      children: [
                    buildButton("1",1,Colors.black54),
                    buildButton("2",1,Colors.black54),
                    buildButton("3",1,Colors.black54),
                  ]
                ),

                 TableRow(
                      children: [
                    buildButton(".",1,Colors.black54),
                    buildButton("0",1,Colors.black54),
                    buildButton("00",1,Colors.black54),
                  ]
                ),
              
              ),

              Container(
                width: MediaQuery.of(Context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(
                      children: [
                        buildButton("×",1,Colors.blue),
                      ]
                    ),
                    TableRow(
                      children: [
                        buildButton("⁻",1,Colors.blue),
                      ]
                    ),
                    TableRow(
                      children: [
                        buildButton("⁺",1,Colors.blue),
                      ]
                    ),
                    TableRow(
                      children: [
                        buildButton("=",1,Colors.redAccent),
                      ]
                    ),
                  ]
                )
              )

            ),

          
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
