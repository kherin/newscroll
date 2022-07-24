import 'package:flutter/material.dart';

// utils
import '../shared/utils.dart';

class TimeDivider extends StatelessWidget {
  final DateTime incomingDateTime;
  TimeDivider(this.incomingDateTime);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          flex: 1,
          child: Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: Divider(
              height: 30,
              indent: 20,
              endIndent: 0,
              thickness: 1,
              color: Colors.black54,
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: Text(
            '${Utils.formatDateTime(incomingDateTime)}',
            textAlign: TextAlign.left,
            style: TextStyle(
              fontSize: 20,
              fontFamily: 'GowunBatang',
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
