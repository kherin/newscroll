import 'package:flutter/material.dart';
import '../shared/constants.dart';

class AppTitle extends StatelessWidget {
  const AppTitle({Key? key, this.fontSize = 50.0}) : super(key: key);

  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(
      '$APP_NAME.',
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: fontSize,
        fontFamily: 'GowunBatang',
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
