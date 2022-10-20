import 'package:flutter/material.dart';
import 'home_page.dart';
import 'projects.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Portfolio App',
      theme: new ThemeData(
          scaffoldBackgroundColor: Color.fromARGB(255, 65, 64, 64)),
      initialRoute: 'home',
      routes: {
        'home': (context) => const Homepage(),
        'about': (context) => const Projects(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
