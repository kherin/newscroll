import 'package:flutter/material.dart';

//widgets
import 'package:newscroll/widgets/app_title.dart';
import '../widgets/feed_list.dart';
import '../widgets/time_divider.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: AppTitle(fontSize: 40),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 30),
              child: TimeDivider(DateTime.now(), true),
            ),
            Expanded(
              child: FeedList(),
            ),
          ],
        ),
      ),
    );
  }
}
