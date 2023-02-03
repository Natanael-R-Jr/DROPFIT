import 'dart:io';
import 'package:flutter/material.dart';
import 'package:mqtt_client/mqtt_client.dart';
import 'package:mqtt_client/mqtt_server_client.dart';
import 'package:projeto_final001/pagina1.dart';
import 'package:projeto_final001/pagina2.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'relogio.dart';
import 'package:flutter/widgets.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(meuapp());
}

class meuapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false, //tira a faixa de debug
        //home: login(),
        routes: {
          "/": (context) => login(),
          "pagina1": (context) => pagina1(),
          "pagina2": (context) => pagina2(),
        });
  }
}

class login extends StatelessWidget {
  String email = "";
  String senha = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(
            left: 30,
            right: 30,
          ),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(padding: EdgeInsets.all(30)),
                Container(
                  height: 300,
                  width: 300,
                  child: Image.asset("assets/imagem/DropFIT.png"),
                  //imagem da tela de login
                ),
                TextField(
                  onChanged: (value) {
                    email = value;
                    print("$email");
                  },
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email: ",
                    filled: true,
                    fillColor: Color.fromARGB(255, 146, 182, 90),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15),
                ),
                TextField(
                  onChanged: (value) {
                    senha = value;
                    print("$senha");
                  },
                  obscureText: true, //esconde a senha
                  decoration: InputDecoration(
                    labelText: "Senha: ",
                    filled: true,
                    fillColor: Color.fromARGB(255, 146, 182, 90),
                    border: OutlineInputBorder(),
                  ),
                ),
                Padding(padding: EdgeInsets.all(15)),
                TextButton(
                  onPressed: () {
                    if (email == "fit@fit.br" && senha == "123") {
                      print("Login Autorizado");
                      Navigator.popAndPushNamed(context, "pagina1");
                    } else {
                      print("Usuário ou senha incorretos");
                    }
                  },
                  child: Text(
                    "  Login  ",
                    style: TextStyle(fontSize: 18),
                  ),
                  style: TextButton.styleFrom(
                    primary: Color.fromARGB(255, 0, 0, 0),
                    backgroundColor: Colors.blueAccent, //cor do fundo

                    onSurface: Color.fromARGB(255, 1, 192, 250),
                    padding: const EdgeInsets.all(25), //margem no botão ou
                    //fixedSize: const Size(100, 100), //tamanho fixo da margem
                    shape: RoundedRectangleBorder(
                      //side: BorderSide(color: Colors.green, width: 5), // borda do botão
                      borderRadius: BorderRadius.circular(24),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
