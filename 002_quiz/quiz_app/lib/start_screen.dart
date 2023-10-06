import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/quiz-logo.png', height: 250),
        const SizedBox(height: 60),
        const Text('Learn flutter the fun way!',
            style: TextStyle(color: Colors.white, fontSize: 24)),
        const SizedBox(height: 30),
        OutlinedButton(
            onPressed: () {},
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white
            ),
            child: const Text('Start Quiz')),
      ],
    );
  }
}
