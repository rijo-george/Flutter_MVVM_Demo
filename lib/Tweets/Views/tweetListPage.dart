import 'package:flutter/material.dart';
import 'package:flutter_mvvm/Tweets/Models/tweetList.dart';
import 'package:flutter_mvvm/Tweets/ViewModels/tweetListPageViewModel.dart';
import 'package:flutter_mvvm/Tweets/Widgets/tweetCard.dart';

class TweetListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TweetListPageViewModel tweetsVM = TweetListPageViewModel();
    tweetsVM.getLikedTweet();
    return Scaffold(
      appBar: AppBar(title: SelectableText("Just Like That")),
      body: StreamBuilder(
          stream: tweetsVM.tweets,
          builder: (context, AsyncSnapshot<TweetList> snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                  itemCount: snapshot.data.tweets.length,
                  itemBuilder: (context, index) {
                    final tweet = snapshot.data.tweets[index];
                    return ListTile(
                      contentPadding: EdgeInsets.all(20),
                      title: TweetCard(tweet: tweet),
                    );
                  });
            } else if (snapshot.hasError) {
              return Text(snapshot.error.toString(),
                  style: TextStyle(fontSize: 22));
            }
            return Center(child: CircularProgressIndicator());
          }),
    );
  }
}
