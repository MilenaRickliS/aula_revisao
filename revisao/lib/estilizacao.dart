import 'package:flutter/material.dart';
import 'package:revisao/navegacao.dart';
void main() {
  runApp(AppEstilizado());
}

class AppEstilizado extends StatelessWidget {
  const AppEstilizado({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Estilização Flutter',
      theme: ThemeData(
        primarySwatch: Colors.teal,
        textTheme: TextTheme(
          displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
          bodyLarge: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
      home: TelaEstilizada(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelaEstilizada extends StatelessWidget {
  const TelaEstilizada({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Imagem de fundo
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/fundo.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Conteúdo sobre a imagem
          Center(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Container(
                padding: EdgeInsets.all(20),
                decoration: BoxDecoration(
                  color: Color.fromARGB(128, 0, 0, 0), 
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white, width: 2),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black45,
                      blurRadius: 10,
                      offset: Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Bem-vindo!',
                      style: Theme.of(context).textTheme.displayLarge,
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Este é um app estilizado com Flutter.',
                      style: Theme.of(context).textTheme.bodyLarge,
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AppNavegacao(),
                          ),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.tealAccent[700],
                        foregroundColor: Colors.white,
                        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      child: Text('Ir para exemplo 5'),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
