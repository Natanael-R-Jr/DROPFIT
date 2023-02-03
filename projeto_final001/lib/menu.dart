import 'package:flutter/material.dart';

class menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu de Ações"),
      ),
      body: SingleChildScrollView(
        // permite a tela ficar infinita
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: TextButton(
                //tirei o caminho para a página 1 por que adicionei botão de reload caso o servidor mqtt caia
                onPressed: () {
                  Navigator.popAndPushNamed(context, "pagina1");
                  //popAndPushNamed desliga a tela anterior e atualiza
                },
                child: Text(
                  "Inicio",
                  style: TextStyle(fontSize: 25),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "pagina2");
                //popAndPushNamed desliga a tela anterior e atualiza
              },
              child: Text(
                "Equipe",
                style: TextStyle(fontSize: 25),
              ),
            ),
            TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/");
                //popAndPushNamed desliga a tela anterior e atualiza
              },
              child: Text(
                "Logout",
                style: TextStyle(fontSize: 25),
              ),
            ),
            Padding(padding: EdgeInsets.all(190)),
            FlutterLogo(
              size: 100,
            ),
            Text(
              "Desenvolvido por:\nNatanael R. Junior",
              style: TextStyle(fontSize: 25),
            ),
            Icon(
              Icons.copyright,
            ),
          ],
        ),
      ),
    );
  }
}
