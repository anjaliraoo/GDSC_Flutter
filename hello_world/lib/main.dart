import 'package:flutter/material.dart';
import 'package:hello_world/homepage.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: 'homepage',
      routes: {'homepage': ((context) => HomePage())},
    );
  }
}
