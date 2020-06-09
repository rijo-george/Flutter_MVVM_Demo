import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Tweets/Views/tweetListPage.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Just Like that",
      home: TweetListPage()
    );
  }
}
