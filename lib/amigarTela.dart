import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

//TELA INICIAL BOAS VINDAS AO JOGO + CONTINUAR
/*
 *arquivo main inicial que representará a
 *primeira tela de boas vindas ao jogo
  e alguns avisos importantes.
 */
class amigartela extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final alt = MediaQuery.of(context).size.height;
    final larg = MediaQuery.of(context).size.width;

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
                  'Oba, um amigo!',
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
              height: alt * 0.35,
              child: Image.asset('assets/Design_sem_nome-removebg-preview.png'),
            ),
            Container(
              width: larg * 0.8,
              height: alt * 0.4,
              child: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  'Uhul! Melmel decidiu fazer amizade com o ratinho. Os dois se divertiram muito e o ratinho lhe ofereceu um pedaço de queijo, como forma de agradecimento!\n' +
                      'Ele pode aceitar o queijo ou se despedir do ratinho!',
                  textAlign: TextAlign.end,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
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
                          height: alt * 0.09,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color(0xff8e7cc3),
                          width: larg * 0.39,
                          height: alt * 0.08,
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.topCenter,
                            child: Text(
                              'Comer',
                              style: TextStyle(
                                fontSize: 29,
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
                    Navigator.pushNamed(context, '/fim4');
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
                          height: alt * 0.09,
                        ),
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          color: Color(0xff8e7cc3),
                          width: larg * 0.39,
                          height: alt * 0.08,
                          padding: const EdgeInsets.only(top: 0.0),
                          child: Align(
                            alignment: Alignment.center,
                            child: Text(
                              'Recusar',
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
                    Navigator.pushNamed(context, '/fim3');
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
