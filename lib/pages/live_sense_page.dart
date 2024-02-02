import 'package:exemplo/pages/widget/app_bar.dart';
import 'package:exemplo/pages/widget/camera_widget.dart';

import 'package:exemplo/pages/widget/drawer_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LiveSense extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const LiveSense({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      drawer: const MyDrawer(),
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
                  'Meu primeiro APP',
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
          const Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  // Seu conteúdo existente aqui
                  Text(
                    '',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: Container(
        margin: const EdgeInsets.only(
            bottom: 16.0), // Ajuste a margem conforme necessário
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CameraPage()));

            // Lógica para abrir a câmera
            // Adicione aqui o código para abrir a câmera
          },
          backgroundColor: const Color.fromARGB(255, 249, 3, 167),
          child: const Icon(Icons.camera_alt), // Cor de fundo do botão
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }
}
