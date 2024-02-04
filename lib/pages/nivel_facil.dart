import 'package:exemplo/pages/widget/drawer_widget.dart';
import 'package:exemplo/pages/widget/maior_widget.dart';
import 'package:exemplo/pages/widget/positivo.dart';
import 'package:flutter/material.dart';

class NivelFacil extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const NivelFacil({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(),
      // Substitua pelo seu AppBar customizado
      body: Column(
        children: [
          Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 249, 3, 167),
            ),
            child: const Center(
              child: Align(
                alignment: Alignment.center,
                child: Text(
                  'Nível Fácil',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MyNumeros()),
              );
            },
            child: const Text('Verificar Maior Número'),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PositivoNegativo()),
              );
            },
            child: const Text('Verificar Positivo ou Negativo'),
          ),
          // ... restante do código
        ],
      ),
    );
  }
}
