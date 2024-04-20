import 'package:flutter/material.dart';
import 'package:paco_money/screen/home.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Paco  money',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromRGBO(248, 140, 63, 1)),
        useMaterial3: true,
      ),
      home:HomeScreen()
    );
  }
}
