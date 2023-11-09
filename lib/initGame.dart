import 'dart:html';
import 'main.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'dart:math';

class initGame extends StatelessWidget {
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
                      'Quem é Melmel?',
                      style: TextStyle(
                          fontSize: 35,
                          fontWeight: FontWeight.w900,
                          fontFamily: 'Henny Penny'),
                    ),
                  ),
                ),
                Container(
                  //color: Colors.amber,
                  padding: const EdgeInsets.only(bottom: 10.0, top: 10.0),
                  width: larg * 0.7,
                  height: alt * 0.4,
                  child: Image.asset(
                    'assets/gatinho-larannja.jpg',
                    height: alt * 0.8,
                    width: larg * 0.8,
                  ),
                ),
                Container(
                  width: larg * 0.9,
                  height: alt * 0.35,
                  padding: const EdgeInsets.only(
                      left: 10.0, right: 10.0, bottom: 0.0, top: 0.0),
                  child: Align(
                    alignment: Alignment.center,
                    child: Text(
                        'Melmel é um gatinho gentil e brincalhão.\n' +
                            'Ele gosta de fazer amizades com outros bichinhos e obedecer seu dono.\n' +
                            'Oh, não! Entrou um ratinho na casa. Seu dono pediu para que o cace!',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w200,
                          color: Colors.black,
                          fontFamily: 'Pacifico',
                        )),
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
                              padding: const EdgeInsets.only(bottom: 0.0),
                              child: Align(
                                alignment: Alignment.center,
                                child: Text(
                                  'Caçar',
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
                        Navigator.pushNamed(context, '/cacartela');
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
                                  'Amigar',
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
                        Navigator.pushNamed(context, '/amigartela');
                      },
                    ),
                  ],
                ),
              ]),
        ));
  }
}
