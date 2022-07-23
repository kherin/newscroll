import 'package:flutter/material.dart';
import 'package:newscroll/widgets/app_title.dart';
import '../shared/constants.dart';

// pages
import '../pages/feed.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Future.delayed(
      const Duration(seconds: 2),
      () => {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const FeedPage()),
        ),
      },
    );

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              color: MAIN_BACKGROUND_COLOR,
              child: const Center(
                child: AppTitle(fontSize: 50),
              ),
            ),
          )
        ],
      ),
    );
  }
}
