import 'package:flutter/material.dart';
import 'tela_home.dart';

void main() {
  runApp(AppInterativo());
}

class AppInterativo extends StatelessWidget {
  const AppInterativo({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Interativo',
      home: TelaHome(),
      debugShowCheckedModeBanner: false,
    );
  }
}
