import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';
import 'initGame.dart';
import 'cacartela.dart';
import 'fim1e2.dart';
import 'amigarTela.dart';
import 'fim3e4.dart';

//
// Visual Novel deenvolvida por Dominique Siqueira
// DESENVOLVIMENTO PARA DISPOSITIVOS MÓVEIS
//
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jogo - Gatinho Melmel',
      theme: ThemeData(fontFamily: 'Raleway'),
      initialRoute: '/',
      routes: {
        '/': (context) => Telainicial(),
        '/initGame': (context) => initGame(),
        '/cacartela': (context) => cacartela(),
        '/amigartela': (context) => amigartela(),
        '/fim1': (context) => Fim1(),
        '/fim2': (context) => Fim2(),
        '/fim3': (context) => Fim3(),
        '/fim4': (context) => Fim4(),
      },
    );
  }
}

//TELA INICIAL BOAS VINDAS AO JOGO + CONTINUAR
/*
 *arquivo main inicial que representará a
 *primeira tela de boas vindas ao jogo
  e alguns avisos importantes.
 */
class Telainicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alt = MediaQuery.of(context).size.height;
    final larg = MediaQuery.of(context).size.width;
    Color _colorContainer = Colors.blue;

    return Scaffold(
      backgroundColor: const Color(0xffedd277),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Container(
              height: alt * 0.1,
              child: const Align(
                child: Text(
                  'Gatinho Melmel',
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Henny Penny'),
                ),
              ),
            ),
            Container(
              width: larg * 0.9,
              height: alt * 0.4,
              decoration: BoxDecoration(
                image: const DecorationImage(
                    image: AssetImage('assets/gato-imagem-animada-0553.gif')),
              ),
            ),
            InkWell(
              child: Stack(
                //alignment: Alignment.topCenter,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.black,
                      width: larg * 0.5,
                      height: alt * 0.1,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0xff8e7cc3),
                      width: larg * 0.49,
                      height: alt * 0.09,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Jogar',
                          style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                              fontFamily: 'Pacifico'),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/initGame');
              },
            ),
          ],
        ),
      ),
    );
  }
}
