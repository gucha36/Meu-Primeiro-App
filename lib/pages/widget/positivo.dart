import 'package:exemplo/pages/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class PositivoNegativo extends StatefulWidget {
  const PositivoNegativo({Key? key}) : super(key: key);

  @override
  _PositivoNegativoState createState() => _PositivoNegativoState();
}

class _PositivoNegativoState extends State<PositivoNegativo> {
  TextEditingController firstNumberController = TextEditingController();
  TextEditingController secondNumberController = TextEditingController();
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Positivo ou Negativo'),
      ),
      drawer: const MyDrawer(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: firstNumberController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Digite um número'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                calcularNumero();
              },
              child: const Text('Verificar'),
            ),
            const SizedBox(height: 16.0),
            Text('O resultado foi: $result'),
          ],
        ),
      ),
    );
  }

  void calcularNumero() {
    double num1 = double.tryParse(firstNumberController.text) ?? 0;

    if (num1 > 1) {
      setState(() {
        result = "Positivo";
      });
    } else if (num1 < 0) {
      setState(() {
        result = "Negativo";
      });
    }
  }
}
