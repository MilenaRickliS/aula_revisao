import 'package:flutter/material.dart';
import 'package:revisao/interacao.dart';

class Tela2 extends StatelessWidget {
  final String mensagem;

  const Tela2({super.key, required this.mensagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela 2')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os widgets verticalmente
          children: <Widget>[
            Text(
              mensagem,
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // Espaço entre o texto e o botão
            ElevatedButton(
              child: Text('Ir para Exemplo 6'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppInterativo(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
