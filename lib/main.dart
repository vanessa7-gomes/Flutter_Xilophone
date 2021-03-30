// Importação do pacote AudioCache
import 'package:audioplayers/audio_cache.dart';
import 'package:flutter/material.dart';

main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var materialApp = MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: HomePage(),
    );
    return materialApp;
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        // Chamada ao Widget personalizado.
        BotaoXilofone(
          numero: 1,
          cor: Colors.red,
        ),
        BotaoXilofone(
          numero: 2,
          cor: Colors.orange,
        ),
        BotaoXilofone(
          numero: 3,
          cor: Colors.yellow,
        ),
        BotaoXilofone(
          numero: 4,
          cor: Colors.greenAccent,
        ),
        BotaoXilofone(
          numero: 5,
          cor: Colors.green,
        ),
        BotaoXilofone(
          numero: 6,
          cor: Colors.blue,
        ),
        BotaoXilofone(
          numero: 7,
          cor: Colors.purple,
        ),
      ],
    ));
  }
}

// Widget cusmozidado para facilitar a criação dos botões
class BotaoXilofone extends StatelessWidget {
  // Atributos utilizados como parametros de customização
  final int numero;
  final Color cor;

  const BotaoXilofone({this.numero, this.cor});

  // Metodo que constroi o botão expandido representando as teclas do Xylophone
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: FlatButton(
        color: cor,
        onPressed: () {
          // Criacao de objeto player de aúdio
          var player = AudioCache();

          // Execução da nota utilizando StringTemplate ou interpolação de string com base na pasta ASSET
          /*
            /assets
              `-> note1.wav
              `-> note2.wav
          */
          // A Pasta asset foi configurada no arquivo puspech.yaml
          player.play('note$numero.wav');
        },
      ),
    );
  }
}
