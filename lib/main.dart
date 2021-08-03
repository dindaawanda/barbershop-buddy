import 'package:flutter/material.dart';
import 'main_screen.dart';
import 'haircuts_data.dart';


void main() {
  runApp(MyApp());
  print(haircutsList);
}

class MyApp extends StatelessWidget {
    // This widget is the root of this application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Barbershop Buddy',
      theme: ThemeData(),
      home: MainScreen(),
    );
  }
}
