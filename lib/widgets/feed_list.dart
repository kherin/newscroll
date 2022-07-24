import 'package:flutter/material.dart';
import 'package:newscroll/widgets/time_divider.dart';
// api service
import '../services/api.dart';
// models
import '../models/newspaper.dart';

// widgets
import 'stacked.dart';

class FeedList extends StatefulWidget {
  const FeedList({Key? key}) : super(key: key);

  @override
  State<FeedList> createState() => _FeedListState();
}

class _FeedListState extends State<FeedList> {
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      builder: (context, AsyncSnapshot snapshot) {
        if (snapshot.connectionState == ConnectionState.none ||
            snapshot.data == null) {
          return Container();
        }
        return ListView.separated(
            itemCount: snapshot.data.length,
            itemBuilder: (context, index) {
              NewsPaperModel newspaper = snapshot.data[index];
              return Column(
                children: <Widget>[Stacked.generate(newspaper)],
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              NewsPaperModel newspaper = snapshot.data[index];
              return TimeDivider(newspaper.publishedDate);
            });
      },
      future: ApiService.getMockedNews(),
    );
  }
}
