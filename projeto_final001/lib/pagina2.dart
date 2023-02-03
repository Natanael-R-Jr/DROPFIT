import 'package:flutter/material.dart';
import 'package:projeto_final001/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

import 'menu.dart';

class pagina2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text(
              "Equipe",
              style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            Padding(padding: EdgeInsets.all(5)),
            Container(
              height: 100,
              width: 100,
              child: Image.asset("assets/imagem/DropFIT.png"),
            ),
          ],
        ),
      ),
      drawer: Drawer(
        child: menu(),
      ),
      body: SingleChildScrollView(
        //permite a pagina ficar infinita
        child: Container(
          child: conteudopagina2(),
        ),
      ),
    );
  }
}

class conteudopagina2 extends StatefulWidget {
  const conteudopagina2({super.key});

  @override
  State<conteudopagina2> createState() => _conteudopagina2State();
}

class _conteudopagina2State extends State<conteudopagina2> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Center(
        child: Column(
          children: [
            Padding(padding: EdgeInsets.all(0)),
            //padding para jogar a imagem e o que tiver na pagina 1 pra baixo
            Container(
              height: 300,
              width: 300,
              child: Image.asset("assets/imagem/TIME_FIT.jpeg"),
              padding: EdgeInsets.all(0),
            ),
            //imagem da equipe
            Center(
              child: Column(
                children: [
                  /*TextButton(
                    onPressed: () {
                      Navigator.popAndPushNamed(context, "pagina1");
                      //popAndPushNamed desliga a tela anterior e atualiza
                    },
                    child: Text(
                      "Linkedin",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),*/
                  Text(
                    "Equipe",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    "Treinamento de Férias FIT Jan. 2023",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchUrl_Anderson();
                      print("Abrir URL");
                    },
                    child: Text(
                      "Anderson José",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  // Descrição da equipe
                  Text(
                    "4°Sem. de Manufatura Avançada",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "FATEC",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchUrl_Angela();
                      print("Abrir URL");
                    },
                    child: Text(
                      "Angela Perelli",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  Text(
                    "2°Semestre de ADS",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "UNIP",
                    style: TextStyle(fontSize: 20),
                  ),
                  TextButton(
                    onPressed: () {
                      _launchUrl_Natanael();
                    },
                    child: Text(
                      "Natanael R. Junior",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  Text(
                    "9°Sem. Eng. Computação",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "ATHON",
                    style: TextStyle(fontSize: 20),
                  ),
                  //Padding(padding: EdgeInsets.all(5)),
                  TextButton(
                    onPressed: () {
                      _launchUrl_Lucas();
                    },
                    child: Text(
                      "Lucas M. França",
                      style: TextStyle(fontSize: 20),
                    ),
                  ),

                  Text(
                    "3°Sem. Eng. de Controle e Automação",
                    style: TextStyle(fontSize: 20),
                  ),
                  Text(
                    "UNESP",
                    style: TextStyle(fontSize: 20),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final Uri _url =
    Uri.parse('https://www.linkedin.com/in/anderson-jos%C3%A9-3453b3210/');

Future<void> _launchUrl_Anderson() async {
  if (!await launchUrl(_url)) {
    throw Exception('Could not launch $_url');
  }
}

final Uri _url2 =
    Uri.parse('https://www.linkedin.com/in/natanael-ribeiro-junior-9b6189226/');

Future<void> _launchUrl_Natanael() async {
  if (!await launchUrl(_url2)) {
    throw Exception('Could not launch $_url2');
  }
}

final Uri _url3 =
    Uri.parse('https://www.linkedin.com/in/angela-perelli-0b6ab267/');

Future<void> _launchUrl_Angela() async {
  if (!await launchUrl(_url3)) {
    throw Exception('Could not launch $_url3');
  }
}

final Uri _url4 = Uri.parse('https://www.linkedin.com/in/lucasmarianifranca/');

Future<void> _launchUrl_Lucas() async {
  if (!await launchUrl(_url4)) {
    throw Exception('Could not launch $_url4');
  }
}
