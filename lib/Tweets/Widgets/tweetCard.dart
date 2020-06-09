import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Tweets/Models/tweet.dart';

class TweetCard extends StatelessWidget {
  final Tweet tweet;

  TweetCard({this.tweet});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          padding: const EdgeInsets.only(bottom: 15),
          child: Row(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.circular(20.0),
                child: Image.network(
                  tweet.user.profileImageUrl,
                  height: 40.0,
                  width: 40.0,
                ),
              ),
              Container(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text(
                    tweet.user.name,
                    style: TextStyle(fontWeight: FontWeight.w600),
                  )),
              Container(
                  padding: const EdgeInsets.only(left: 5),
                  child: SelectableText(
                    '@' + tweet.user.screenName,
                    style: TextStyle(fontWeight: FontWeight.w100),
                  )),
            ],
          ),
        ),
        SelectableText(tweet.fullText),
      ],
    );
  }
}