import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const <Widget>[
          RiveAnimation.asset(
            'assets/animations/newscroll.riv',
            fit: BoxFit.contain,
          ),
        ],
      ),
    );
  }
}
