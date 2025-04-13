import 'package:flutter/material.dart';
import 'tela1.dart';

void main() {
  runApp(AppNavegacao());
}

class AppNavegacao extends StatelessWidget {
  const AppNavegacao({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Navegação entre Telas',
      home: Tela1(),
      debugShowCheckedModeBanner: false,
    );
  }
}
