import 'package:flutter/material.dart';

class MyNumeros extends StatefulWidget {
  @override
  _MyNumerosState createState() => _MyNumerosState();
}

class _MyNumerosState extends State<MyNumeros> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Verificar Maior Número'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration:
                  InputDecoration(labelText: 'Digite o primeiro número'),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: secondNumberController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Digite o segundo número'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                calcularMaiorNumero();
              },
              child: Text('Verificar'),
            ),
            SizedBox(height: 16.0),
            Text('Maior número: $result'),
          ],
        ),
      ),
    );
  }

  void calcularMaiorNumero() {
    double num1 = double.tryParse(firstNumberController.text) ?? 0;
    double num2 = double.tryParse(secondNumberController.text) ?? 0;

    if (num1 > num2) {
      setState(() {
        result = num1.toString();
      });
    } else if (num2 > num1) {
      setState(() {
        result = num2.toString();
      });
    } else {
      setState(() {
        result = 'Os números são iguais';
      });
    }
  }
}
