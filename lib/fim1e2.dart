import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

//TELAS FINAIS DO JOGO 1 E 2
/*
 *tela do primeiro final do jogo
 */
class Fim1 extends StatelessWidget {
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
                  'Hmm, carinho bom!',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Henny Penny'),
                ),
              ),
            ),
            Container(
              width: larg * 0.9,
              height: alt * 0.4,
              child: Image.asset('assets/melmel-e-sua-dona-semf.jpg'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.25,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Hmmm…! Que carinho bom e cheio de amor que o Melmel ganhou!\n' +
                      'Melmel sente-se o gatinho mais feliz do mundo!',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
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
            InkWell(
              child: Stack(
                //alignment: Alignment.topCenter,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.black,
                      width: larg * 0.5,
                      height: alt * 0.08,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0xff8e7cc3),
                      width: larg * 0.49,
                      height: alt * 0.07,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Finalizar',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}

/*
 *tela do segundo final do jogo
 */
class Fim2 extends StatelessWidget {
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
                  'Que tristeza...',
                  style: TextStyle(
                      fontSize: 35,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Henny Penny'),
                ),
              ),
            ),
            Container(
              width: larg * 0.9,
              height: alt * 0.35,
              child: Image.asset('assets/gatinho-dorme.jpg'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.25,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Poxa… Parece que Melmel não ficou feliz em machucar o ratinho!' +
                      '\nEntão ele foi dormir triste pensando que poderia ter sido amigo do ratinho…',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 19,
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
            InkWell(
              child: Stack(
                //alignment: Alignment.topCenter,
                children: <Widget>[
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Colors.black,
                      width: larg * 0.5,
                      height: alt * 0.08,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      color: Color(0xff8e7cc3),
                      width: larg * 0.49,
                      height: alt * 0.07,
                      child: Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Finalizar',
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Pacifico',
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, '/');
              },
            ),
          ],
        ),
      ),
    );
  }
}
