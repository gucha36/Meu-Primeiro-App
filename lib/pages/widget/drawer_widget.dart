import 'package:exemplo/pages/contacts_page.dart';
import 'package:exemplo/pages/home_page.dart';
import 'package:exemplo/pages/live_sense_page.dart';
import 'package:exemplo/pages/rotas_page.dart';
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
            title: const Text('Sobre nós'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const HomePage()),
              );
            },
          ),
          ListTile(
            title: const Text('Página 1'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const LiveSense()),
              ); // Adicione a ação desejada quando o Item 2 for selecionado
            },
          ),
          ListTile(
            title: const Text('Página 2'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Rotas()),
              ); // Adicione a ação desejada quando o Item 3 for selecionado
            },
          ),
          ListTile(
            title: const Text('Página 3'),
            trailing: const Icon(Icons.arrow_forward),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const Contatos()),
              ); // Adicione a ação desejada quando o Item 3 for selecionado
            },
          ),
        ],
      ),
    );
  }
}
