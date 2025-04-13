import 'package:flutter/material.dart';
import 'package:revisao/center.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/', // Define a rota inicial
      routes: {
        '/': (context) => HomePage(), // Rota inicial para a HomePage
        '/centralizar': (context) => Centralizar(), // Rota para a tela Centralizar
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Hello, World!'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
          children: <Widget>[
            Text('Hello, World!', style: TextStyle(fontSize: 24)),
            SizedBox(height: 20), // Espaço entre o texto e o botão
            ElevatedButton(
              child: Text('Ir para Exemplo 2'),
              onPressed: () {
                Navigator.pushNamed(
                  context,
                  '/centralizar', // Rota para a próxima tela
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}