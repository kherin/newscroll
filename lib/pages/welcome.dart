import 'package:flutter/material.dart';
import 'package:rive/rive.dart';
import './feed.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(milliseconds: 1500), () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const FeedPage()),
      );
    });
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const <Widget>[
          Expanded(
            flex: 2,
            child: RiveAnimation.asset('assets/animations/newscroll.riv'),
          ),
          Expanded(
            flex: 1,
            child: RiveAnimation.asset('assets/animations/title_animation.riv'),
          )
        ],
      ),
    );
  }
}
