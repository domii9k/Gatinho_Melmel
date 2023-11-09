import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

//TELA INICIAL BOAS VINDAS AO JOGO + CONTINUAR
/*
 *arquivo main inicial que representará a
 *primeira tela de boas vindas ao jogo
  e alguns avisos importantes.
 */
class cacartela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alt = MediaQuery.of(context).size.height;
    final larg = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color(0xffedd277),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: alt * 0.1,
              child: const Align(
                child: Text(
                  'Vamos à caça!',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Henny Penny'),
                ),
              ),
            ),
            Container(
              //color: Colors.green,
              width: larg * 0.9,
              height: alt * 0.4,
              child: Image.asset('assets/gato-imagem-animada-0445.gif'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.35,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Melmel decide caçar o ratinho e fazer seu dono feliz.\n' +
                      'Uau! Ele ganhou uma recompensa!' +
                      'Ele poderá receber um carinho especial de seu dono ou recusar e ir dormir.',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    fontFamily: 'Pacifico',
                    //  fontFamily:,
                  ),
                ),
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16.0),
                // color: Color(0xff0a488b),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                InkWell(
                  child: Stack(
                    //alignment: Alignment.topCenter,

                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.only(top: 0.0),
                          color: Colors.black,
                          width: larg * 0.4,
                          height: alt * 0.08,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color(0xff8e7cc3),
                          width: larg * 0.39,
                          height: alt * 0.07,
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Carinho',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'Pacifico',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/fim1');
                  },
                ),
                InkWell(
                  child: Stack(
                    //alignment: Alignment.topCenter,

                    children: <Widget>[
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          padding: const EdgeInsets.only(top: 0.0),
                          color: Colors.black,
                          width: larg * 0.4,
                          height: alt * 0.08,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color(0xff8e7cc3),
                          width: larg * 0.39,
                          height: alt * 0.07,
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Dormir',
                              style: TextStyle(
                                fontSize: 28,
                                fontWeight: FontWeight.w100,
                                fontFamily: 'Pacifico',
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  onTap: () {
                    Navigator.pushNamed(context, '/fim2');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
