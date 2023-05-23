import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:sportsshopapp/products/baseball.dart';
import 'package:sportsshopapp/products/baseballbat.dart';
import 'package:sportsshopapp/products/football.dart';
import 'package:sportsshopapp/products/hockeyuniform.dart';

class MyHome extends StatefulWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  _MyHomeState createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
      body: const HomeList(),
      backgroundColor: Color.fromARGB(255, 0, 0, 0),
    );
  }
}

class HomeList extends StatefulWidget {
  const HomeList({super.key});

  @override
  State<HomeList> createState() => _HomeListState();
}

class _HomeListState extends State<HomeList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => HockeyUniform())));
                  },
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/hockeyUniform.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Container(
                      child: Text("Hockey Uniform"),
                    )
                  ]),
                ),
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => Football())));
                  },
                  child: Column(
                    children: [
                      Container(
                        child: Image.asset(
                          'assets/images/ball.png',
                          height: 160,
                          width: 160,
                        ),
                      ),
                      Container(
                        child: Text("Football"),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => BaseBall())));
                  },
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/baseball.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Container(
                      child: Text("Baseball"),
                    ),
                  ]),
                ),
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(MaterialPageRoute(
                        builder: ((context) => BaseBallBat())));
                  },
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/baseballBat.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Container(
                      child: Text("Baseball Bat"),
                    ),
                  ]),
                ),
              ]),
            ),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Row(
          children: [
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Column(children: [
                InkWell(
                  onTap: () {},
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/cricketKit.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Container(
                      child: Text("Cricket Kit"),
                    ),
                  ]),
                ),
              ]),
            ),
            SizedBox(
              width: 10,
            ),
            Container(
              height: 250,
              width: 197,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(children: [
                InkWell(
                  onTap: () {},
                  child: Column(children: [
                    Container(
                      child: Image.asset(
                        'assets/images/HockeyStick.png',
                        height: 160,
                        width: 160,
                      ),
                    ),
                    Container(
                      child: Text("Hockey Stick"),
                    ),
                  ]),
                ),
              ]),
            ),
          ],
        ),
      ],
    );
  }
}
