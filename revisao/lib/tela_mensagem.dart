import 'package:flutter/material.dart';

class TelaMensagem extends StatelessWidget {
  final String mensagem;

  const TelaMensagem({super.key, required this.mensagem});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Mensagem')),
      body: Center(
        child: Text(
          mensagem,
          style: TextStyle(fontSize: 24),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
