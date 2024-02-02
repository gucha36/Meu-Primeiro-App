import 'package:exemplo/pages/widget/app_bar.dart';
import 'package:exemplo/pages/widget/drawer_widget.dart';
import 'package:flutter/material.dart';

class Contatos extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Contatos({Key? key});

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
        ));
  }
}
