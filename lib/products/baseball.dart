import 'package:flutter/material.dart';
import 'package:sportsshopapp/UI/cart.dart';
import 'package:sportsshopapp/checkout/checkoutbaseball.dart';

class BaseBall extends StatelessWidget {
  const BaseBall({super.key});

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
      body: baseball(),
      backgroundColor: Colors.black,
    );
  }
}

class baseball extends StatefulWidget {
  const baseball({super.key});

  @override
  State<baseball> createState() => _baseballState();
}

class _baseballState extends State<baseball> {
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
              child: Image.asset('assets/images/baseball.png'),
            ),
            Text(
              'Baseball',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            Text(
              'Rs 2000',
              style: TextStyle(fontSize: 20, color: Colors.white),
            ),
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
                          builder: ((context) => MyCheckOutBaseball())));
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
