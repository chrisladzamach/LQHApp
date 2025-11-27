import 'package:flutter/material.dart';

class HomeMenu extends StatelessWidget {
  const HomeMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('LQHApp')),
      body: Column(
        children: [
          Column(
            children: [
              Image.asset(
                '/lib/assets/logoJDK.webp',
                width: 200,
                height: 200,
                fit: BoxFit.cover,
              ),
              Text('LQHApp'),
            ],
          ),
          Column(
            children: [
              Text('Teoría'),
              Text('Técnicas de defensa'),
              Text('Figuras con armas'),
              Text('Figuras sin armas'),
              Text('Básicos con armas'),
              Text('Básicos sin armas'),
              TextButton(
                onPressed: () {},
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all(Colors.grey),
                ),
                child: Text('Hello', style: TextStyle(color: Colors.white)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
