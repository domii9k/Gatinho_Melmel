import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

//TELAS FINAIS DO JOGO 3 E 4
/*
 *tela do terceiro final do jogo
 */
class Fim3 extends StatelessWidget {
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
                  'Tchau, tchau, ratinho!',
                  style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w900,
                      fontFamily: 'Henny Penny'),
                ),
              ),
            ),
            Container(
              width: larg * 0.9,
              height: alt * 0.35,
              child: Image.asset('assets/girgatinhotcahu.gif'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.30,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Parece que Melmel não gosta de queijo… Mas agradece a gentileza!\n' +
                      'Ele se despede do ratinho e volta para casa feliz por ter feito um novo amigo!',
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
 *tela do quarto final do jogo
 */
class Fim4 extends StatelessWidget {
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
                  'O ratinho era vilão!',
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
              child: Image.asset('assets/rato-mau.jpg'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.25,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Oh, não!\nO ratinho se mostrou o verdadeiro vilão e havia envenenado o queijo!' +
                      '\nMelmel, infelizmente, faleceu. :(',
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
