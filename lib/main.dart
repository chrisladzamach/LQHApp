import 'package:flutter/material.dart';
import 'package:lqh_app/screens/home_menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // title: 'Material App',
      debugShowCheckedModeBanner: false,
      // home: Scaffold(body: Column(children: [HomeMenu()])),
      
      home: HomeMenu(),
    );
  }
}
