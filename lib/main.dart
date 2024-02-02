import 'package:exemplo/pages/home_page.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // debugShowCheckedModeBanner: false,//serve para tirar faixa debug do cantinho do app
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: const HomePage(),
    );
  }
}
