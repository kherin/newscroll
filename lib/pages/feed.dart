import 'package:flutter/material.dart';
import 'package:newscroll/widgets/app_title.dart';
import '../shared/constants.dart';
import '../widgets/feed_list.dart';

class FeedPage extends StatefulWidget {
  const FeedPage({Key? key}) : super(key: key);

  @override
  State<FeedPage> createState() => _FeedPageState();
}

class _FeedPageState extends State<FeedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MAIN_BACKGROUND_COLOR,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(10, 20, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.fromLTRB(20, 30, 20, 0),
              child: AppTitle(fontSize: 40),
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
