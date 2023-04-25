import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  TextEditingController num1Controller = TextEditingController();
  TextEditingController num2Controller = TextEditingController();

  int result = 0;

  void _sumar() {
    setState(() {
      result = int.parse(num1Controller.text) + int.parse(num2Controller.text);
    });
  }

  void _restar() {
    setState(() {
      result = int.parse(num1Controller.text) - int.parse(num2Controller.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculadora'),
      ),
      backgroundColor: Colors.red[10],
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: num1Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Número 1',
                labelStyle: TextStyle(
                  color: Colors.black87,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: num2Controller,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: 'Número 2',
                labelStyle: TextStyle(
                  color: Colors.black87,
                ),
                border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black87),
                ),
              ),
              style: TextStyle(
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                ElevatedButton(
                  onPressed: _sumar,
                  child: Text(
                    '+',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: _restar,
                  child: Text(
                    '-',
                    style: TextStyle(
                      color: Colors.black87,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Text(
              'Resultado: $result',
              style: TextStyle(
                fontSize: 24.0,
                color: Colors.black87,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
