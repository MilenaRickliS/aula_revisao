import 'package:flutter/material.dart';
import 'package:revisao/tela_mensagem.dart';

class TelaHome extends StatefulWidget {
  const TelaHome({super.key});

  @override
  _TelaHomeState createState() => _TelaHomeState();
}

class _TelaHomeState extends State<TelaHome> {
  TextEditingController nomeController = TextEditingController();
  bool saudacaoEspecial = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Tela Inicial')),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: nomeController,
              decoration: InputDecoration(
                labelText: 'Digite seu nome',
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Text('Saudação especial'),
                Switch(
                  value: saudacaoEspecial,
                  onChanged: (valor) {
                    setState(() {
                      saudacaoEspecial = valor;
                    });
                  },
                ),
              ],
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                String nome = nomeController.text;
                String mensagem = saudacaoEspecial
                    ? 'Olá, $nome! Que bom te ver!'
                    : 'Oi, $nome!';
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => TelaMensagem(mensagem: mensagem),
                  ),
                );
              },
              child: Text('Enviar'),
            ),
          ],
        ),
      ),
    );
  }
}
