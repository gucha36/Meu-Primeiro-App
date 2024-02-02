// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class MyAppBarDrawer extends StatelessWidget {
  const MyAppBarDrawer({
    Key? key,
    required this.title,
    required this.body,
  }) : super(key: key);

  final String title;
  final Widget body;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Align(
              alignment: Alignment.center,
              child: Text(
                '',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
        body: Column(children: [
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
        ]));
  }
}
