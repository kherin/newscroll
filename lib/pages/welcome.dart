import 'package:flutter/material.dart';
import '../shared/constants.dart';

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
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: const Color.fromRGBO(255, 244, 235, 1.0),
              child: Center(
                child: Text(
                  '$APP_NAME.',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 50,
                    fontFamily: 'GowunBatang',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
