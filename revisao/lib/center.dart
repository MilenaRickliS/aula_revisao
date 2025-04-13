import 'package:flutter/material.dart';
import 'package:revisao/layouts.dart';

void main() {
  runApp(Centralizar());
}

class Centralizar extends StatelessWidget {
  const Centralizar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Meu App Flutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza os widgets verticalmente
          children: <Widget>[
            Text(
              'Olá, mundo!',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20), // Adiciona um espaço entre o texto e o botão
            ElevatedButton(
              child: Text('Ir para Exemplo 3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LayoutExampleApp(),
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
