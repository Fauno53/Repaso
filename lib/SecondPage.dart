import 'dart:math';
import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final String data;

  SecondPage(
      {required this.data,
      required void Function(String data, int random) updateFunction});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  int randomValue = 0;

  void generateRandomNumber() {
    final random = Random();
    final newRandomValue = random.nextInt(100);
    setState(() {
      randomValue = newRandomValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pagina 2'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.green],
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Número generado: $randomValue',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  generateRandomNumber();
                },
                child: Text('Generar número'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
