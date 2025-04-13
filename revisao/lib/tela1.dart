import 'package:flutter/material.dart';
import 'tela2.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela 1')),
      body: Center(
        child: ElevatedButton(
          child: Text('Ir para Tela 2'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Tela2(mensagem: 'Olá da Tela 1!'),
              ),
            );
          },
        ),
      ),
    );
  }
}
