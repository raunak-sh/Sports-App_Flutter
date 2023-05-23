import 'dart:ui';

import 'package:flutter/material.dart';

class MyCheckOutHokeyUniform extends StatelessWidget {
  const MyCheckOutHokeyUniform({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: Colors.black,
        actions: <Widget>[
          Container(
            padding: EdgeInsets.only(right: 100, top: 4),
            child: Text(
              'Sports App',
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
                fontFamily: 'Bau',
                fontSize: 35,
                shadows: <Shadow>[
                  Shadow(
                    offset: Offset(3.0, 3.0),
                    blurRadius: 20.0,
                    color: Color.fromARGB(122, 143, 141, 141),
                  ),
                ],
              ),
            ),
          ),
          IconButton(
              padding: EdgeInsets.only(right: 10, top: 4),
              icon: Icon(Icons.menu),
              onPressed: () => Navigator.pop(context))
        ],
      ),
      body: checkouthokeyuniform(),
      backgroundColor: Colors.black,
    );
  }
}

class checkouthokeyuniform extends StatefulWidget {
  const checkouthokeyuniform({super.key});

  @override
  State<checkouthokeyuniform> createState() => _checkouthokeyuniformState();
}

class _checkouthokeyuniformState extends State<checkouthokeyuniform> {
  @override
  Widget build(BuildContext context) {
    return ListView(children: <Widget>[
      Container(
        padding: EdgeInsets.only(left: 120),
        child: Text(
          'CHECKOUT',
          style: TextStyle(
              fontFamily: 'Bau',
              fontSize: 40,
              color: Colors.white,
              shadows: <Shadow>[
                Shadow(
                  offset: Offset(3.0, 3.0),
                  blurRadius: 20.0,
                  color: Color.fromARGB(122, 143, 141, 141),
                )
              ]),
        ),
      ),
      SizedBox(
        width: 10,
      ),
      Column(
        children: [
          Container(
            width: 370,
            height: 400,
            // color: Colors.black,
            decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20)),
            child: Column(children: [
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Total Amount',
                  style: TextStyle(
                    fontFamily: 'bau',
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Rs.10000',
                  style: TextStyle(
                    fontFamily: 'bau',
                    fontSize: 35,
                    decoration: TextDecoration.underline,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                alignment: Alignment.center,
                child: Text(
                  'Payment Type',
                  style: TextStyle(
                    fontFamily: 'bau',
                    fontSize: 25,
                  ),
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: 60,
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      Container(
                        child: Image.asset(
                          'assets/images/esewa.png',
                          height: 94,
                          width: 94,
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    width: 50,
                  ),
                  Container(
                    child: Image.asset(
                      'assets/images/cod.png',
                      height: 94,
                      width: 94,
                    ),
                  )
                ],
              )
            ]),
          ),
        ],
      )
    ]);
  }
}
