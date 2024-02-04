import 'package:exemplo/pages/nivel_dificil.dart';
import 'package:exemplo/pages/nivel_facil.dart';
import 'package:exemplo/pages/home_page.dart';
import 'package:exemplo/pages/live_sense_page.dart';
import 'package:exemplo/pages/intermediario.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          const UserAccountsDrawerHeader(
            accountName: Text('Ariana'),
            accountEmail: Text('teste@teste.com'),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(
                Icons.person,
                color: Colors.black,
              ),
            ),
            decoration: BoxDecoration(
              color: Color.fromARGB(255, 249, 3, 167),
            ),
          ),
          ListTile(
            title: const Text('Sobre o APP'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Teste de câmera'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LiveSense()),
              ); // Adicione a ação desejada quando o Item 2 for selecionado
            },
          ),
          ListTile(
            title: const Text('Nível Fácil'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NivelFacil()),
              ); // Adicione a ação desejada quando o Item 3 for selecionado
            },
          ),
          ListTile(
            title: const Text('Nível Intermidiário'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const NivelIntermediario()),
              ); // Adicione a ação desejada quando o Item 3 for selecionado
            },
          ),
          ListTile(
            title: const Text('Nível Difícil'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const NivelDificil()),
              ); // Adicione a ação desejada quando o Item 3 for selecionado
            },
          ),
        ],
      ),
    );
  }
}
