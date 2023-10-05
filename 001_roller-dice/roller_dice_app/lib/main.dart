import 'package:flutter/material.dart';

void main() {
  runApp(const RollerDiceApp());
}

class RollerDiceApp extends StatelessWidget {
  const RollerDiceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Throw the dice!',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Roller Dice App'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset('assets/images/dice-1.png', scale: 3),
              const SizedBox(
                height: 100,
              ),
              ElevatedButton(
                style: null,
                onPressed: () {},
                child: const Text('Throw the dice'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
