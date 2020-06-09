class APIConstants {

  static String tweetsFrom(String keyword) {
    return "https://api.twitter.com/1.1/favorites/list.json?count=10000000&screen_name=$keyword&tweet_mode=extended";
  }

  static String Consumer_Key = "P2an5zQdpBdw60fP2WUAChZ2K";

  static String Consumer_Secret =
      "mQ392QCrGLpNlrtTvNx6GDNamJMpIkbj2AE5kVnvhxxk2xKt9z";

  static String Access_Token =
      "978256368447627272-VZsrSY9cAsx03O3c4TNWpsW8KkOO9ch";

  static String Token_Secret = "6SEW0QBOKw21iWzHBFfg3aCWXWBZE1u9AxwiL48bwAw0D";
}
