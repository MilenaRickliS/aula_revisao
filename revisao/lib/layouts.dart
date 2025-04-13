import 'package:flutter/material.dart';
import 'package:revisao/estilizacao.dart';

void main() {
  runApp(LayoutExampleApp());
}

class LayoutExampleApp extends StatelessWidget {
  const LayoutExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Layout no Flutter',
      home: HomePage(),
      debugShowCheckedModeBanner: false, // remove a faixa de debug
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tela Inicial'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Espaçamento nas bordas
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // Centraliza verticalmente
            crossAxisAlignment: CrossAxisAlignment.center, // Centraliza horizontalmente
            children: [
              Text(
                'Bem-vindo ao App!',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10), // Espaço entre os textos
              Text(
                'Escolha uma opção abaixo:',
                style: TextStyle(fontSize: 18, color: Colors.grey[700]),
              ),
              SizedBox(height: 30),
              ElevatedButton(
              child: Text('Ir para Exemplo 4'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AppEstilizado(),
                  ),
                );
              },
            ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Ação do botão 2
                },
                child: Text('Opção 2'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
