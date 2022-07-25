import 'package:flutter/material.dart';

// utils
import '../shared/utils.dart';

class TimeDivider extends StatelessWidget {
  final DateTime incomingDateTime;
  final bool isToday;
  TimeDivider(this.incomingDateTime, this.isToday);

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
          child: getDate(incomingDateTime, isToday),
        )
      ],
    );
  }

  Widget getDate(DateTime incomingDateTime, bool isToday) {
    if (isToday) {
      return const Text(
        'Today',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 20,
          fontFamily: 'GowunBatang',
          fontWeight: FontWeight.bold,
        ),
      );
    } else {
      return Text(
        Utils.formatDateTime(incomingDateTime),
        textAlign: TextAlign.left,
        style: const TextStyle(
          fontSize: 20,
          fontFamily: 'GowunBatang',
          fontWeight: FontWeight.bold,
        ),
      );
    }
  }
}
