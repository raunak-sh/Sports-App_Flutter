import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sportsshopapp/UI/CheckOut.dart';
import 'package:sportsshopapp/UI/home.dart';

import 'package:sportsshopapp/UI/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:sportsshopapp/UI/register.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyLogin(),
    );
  }
}
