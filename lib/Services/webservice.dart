import 'dart:convert';

import 'package:flutter_mvvm/Constants/apiConstant.dart';
import 'package:http/http.dart' as http;
import '../Tweets/Models/tweet.dart';
import 'package:twitter_api/twitter_api.dart';

class Webservice {
  Future<List<Tweet>> fetchLikedTweets(String maxId) async {
    final _twitterOauth = new twitterApi(
        consumerKey: APIConstants.Consumer_Key,
        consumerSecret: APIConstants.Consumer_Secret,
        token: APIConstants.Access_Token,
        tokenSecret: APIConstants.Token_Secret);

   var dictionary = {
      "screen_name": "rijogeorge__",
      "count": "200",
      "tweet_mode": "extended",
    };
    if (maxId != "") {
      dictionary["max_id"] = maxId;
    }
    Future twitterRequest = _twitterOauth.getTwitterRequest(
      "GET",
      "favorites/list.json",
      options: dictionary,
    );

    var response = await twitterRequest;
    if (response.statusCode == 200) {
      Iterable list = json.decode(response.body);
      List<Tweet> tweet  =  list.map((tweet) => Tweet.fromJson(tweet)).toList();
      return tweet;
    } else {
      print("failed with " + "${response.statusCode}");
      throw Exception("Failed");
    }

//     String url = APIConstants.tweetsFrom("rijogeorge__");
//     print(url);
//     final response = await http.get(url, headers: {
//       "Authorization":
//           'oauth_consumer_key=${APIConstants.Consumer_Key}, oauth_token="${APIConstants.Access_Token}"',
//       "Content-Type": "application/json"
//     });

// // {
// //       "Consumer_Key": APIConstants.Consumer_Key,
// //       "Consumer_Secret": APIConstants.Consumer_Secret,
// //       "Access_Token": APIConstants.Access_Token,
// //       "Token_Secret": APIConstants.Token_Secret
// //     }
//     print("------");
//     print(response.statusCode);
//     print(response.body);
//     print("------");
//     if (response.statusCode == 200) {
//       Iterable list = json.decode(response.body);
//       return list.map((tweet) => Tweet.fromJson(tweet)).toList();
//     } else {
//       throw Exception("Failed");
//     }
  }
}
