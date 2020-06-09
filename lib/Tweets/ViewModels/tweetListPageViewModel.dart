import 'package:flutter_mvvm/Common/baseViewModel.dart';
import 'package:flutter_mvvm/Services/webservice.dart';
import 'package:flutter_mvvm/Tweets/Models/tweet.dart';
import 'package:flutter_mvvm/Tweets/Models/tweetList.dart';
import 'package:rxdart/rxdart.dart';

class TweetListPageViewModel extends BaseViewModel<TweetList> {
  Observable<TweetList> get tweets => fetcher.stream;
  TweetList _tweetList = TweetList();
  String _maxId = "";

  

  Future<void> getLikedTweet() async {
    List<Tweet> tweets = await Webservice()
        .fetchLikedTweets(_maxId)
        .catchError((error) => fetcher.addError("Something went wrong"));
    if (tweets.length == 1 || tweets.length == 0) {
      fetcher.sink.add(this._tweetList);
      return;
    }
    this._tweetList.tweets.addAll(tweets);
    _maxId = this._tweetList.tweets.last.idStr;
    getLikedTweet();
  }
}
