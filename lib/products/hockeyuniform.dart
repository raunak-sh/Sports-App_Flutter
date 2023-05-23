import 'package:flutter/material.dart';
import 'package:sportsshopapp/UI/cart.dart';
import 'package:sportsshopapp/checkout/hokeyuniform.dart';

class HockeyUniform extends StatelessWidget {
  const HockeyUniform({super.key});

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
      body: Hockeyuniform(),
      backgroundColor: Colors.black,
    );
  }
}

class Hockeyuniform extends StatefulWidget {
  const Hockeyuniform({super.key});

  @override
  State<Hockeyuniform> createState() => _HockeyuniformState();
}

class _HockeyuniformState extends State<Hockeyuniform> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              height: 350,
              width: 350,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: Image.asset('assets/images/hockeyUniform.png'),
              // color: Colors.black,
            ),
            Text(
              'Hockey Uniform',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Rs 10000',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
            // Text(),  //description of product

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: ((context) => MyCart())));
                    },
                    child: Text('Add To Cart')),
                SizedBox(
                  width: 30,
                ),
                ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: ((context) => MyCheckOutHokeyUniform())));
                    },
                    child: Text('Checkout')),
              ],
            )
          ],
        )
      ],
    );
  }
}
