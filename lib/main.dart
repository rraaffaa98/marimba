import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MarimbaApp());

class MarimbaApp extends StatelessWidget {
  void tocarSom(int numerodoSom) {
    final player = AudioCache();
    player.play('nota$numerodoSom.wav');
  }

  //função do tipo especifico do flutter 'expanded' e retorna o metodo expanded
  //passado como parametro a cor, e o numeor da nota para q possa ser passado como parmetro fora da função
  // e de pra chamar
  Expanded geral({Color cor, int numeroDaNota}) {
    //expande a caixa na direção principal
    return Expanded(
      child: TextButton(
        onPressed: () {
          tocarSom(numeroDaNota);
        },
        //coloca cor no botao
        style: TextButton.styleFrom(backgroundColor: cor),
        child: null,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'MARIMBA',
            style: TextStyle(
                fontSize: 30.0,
                color: Colors.pinkAccent,
                letterSpacing: 1.5,
                fontWeight: FontWeight.bold),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              geral(cor: Colors.red[800], numeroDaNota: 1),
              geral(cor: Colors.deepOrange, numeroDaNota: 2),
              geral(cor: Colors.yellow, numeroDaNota: 3),
              geral(cor: Colors.green, numeroDaNota: 4),
              geral(cor: Colors.blue, numeroDaNota: 5),
              geral(cor: Colors.indigo, numeroDaNota: 6),
              geral(cor: Colors.purple, numeroDaNota: 7),
            ],
          ),
        ),
      ),
    );
  }
}
