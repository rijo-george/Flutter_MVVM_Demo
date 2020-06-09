
class Tweet {
  String _createdAt;
  int _id;
  String _idStr;
  String _fullText;
  bool _truncated;
  int _inReplyToStatusId;
  String _inReplyToStatusIdStr;
  int _inReplyToUserId;
  String _inReplyToUserIdStr;
  String _inReplyToScreenName;
  User _user;

  Tweet(
      {String createdAt,
      int id,
      String idStr,
      String fullText,
      bool truncated,
      int inReplyToStatusId,
      String inReplyToStatusIdStr,
      int inReplyToUserId,
      String inReplyToUserIdStr,
      String inReplyToScreenName,
      User user}) {
    this._createdAt = createdAt;
    this._id = id;
    this._idStr = idStr;
    this._fullText = fullText;
    this._truncated = truncated;

    this._inReplyToStatusId = inReplyToStatusId;
    this._inReplyToStatusIdStr = inReplyToStatusIdStr;
    this._inReplyToUserId = inReplyToUserId;
    this._inReplyToUserIdStr = inReplyToUserIdStr;
    this._inReplyToScreenName = inReplyToScreenName;
    this._user = user;
  }

  String get createdAt => _createdAt;
  set createdAt(String createdAt) => _createdAt = createdAt;
  int get id => _id;
  set id(int id) => _id = id;
  String get idStr => _idStr;
  set idStr(String idStr) => _idStr = idStr;
  String get fullText => _fullText;
  set fullText(String fullText) => _fullText = fullText;
  bool get truncated => _truncated;
  set truncated(bool truncated) => _truncated = truncated;
  int get inReplyToStatusId => _inReplyToStatusId;
  set inReplyToStatusId(int inReplyToStatusId) =>
      _inReplyToStatusId = inReplyToStatusId;
  String get inReplyToStatusIdStr => _inReplyToStatusIdStr;
  set inReplyToStatusIdStr(String inReplyToStatusIdStr) =>
      _inReplyToStatusIdStr = inReplyToStatusIdStr;
  int get inReplyToUserId => _inReplyToUserId;
  set inReplyToUserId(int inReplyToUserId) =>
      _inReplyToUserId = inReplyToUserId;
  String get inReplyToUserIdStr => _inReplyToUserIdStr;
  set inReplyToUserIdStr(String inReplyToUserIdStr) =>
      _inReplyToUserIdStr = inReplyToUserIdStr;
  String get inReplyToScreenName => _inReplyToScreenName;
  set inReplyToScreenName(String inReplyToScreenName) =>
      _inReplyToScreenName = inReplyToScreenName;
  User get user => _user;
  set user(User user) => _user = user;
  

  Tweet.fromJson(Map<String, dynamic> json) {
    _createdAt = json['created_at'];
    _id = json['id'];
    _idStr = json['id_str'];
    _fullText = json['full_text'];
    _truncated = json['truncated'];
    _inReplyToStatusId = json['in_reply_to_status_id'];
    _inReplyToStatusIdStr = json['in_reply_to_status_id_str'];
    _inReplyToUserId = json['in_reply_to_user_id'];
    _inReplyToUserIdStr = json['in_reply_to_user_id_str'];
    _inReplyToScreenName = json['in_reply_to_screen_name'];
    _user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }
}

class User {
  int _id;
  String _idStr;
  String _name;
  String _screenName;
  String _profileImageUrl;
  String _profileImageUrlHttps;

  User(
      {int id,
      String idStr,
      String name,
      String screenName,
      String profileImageUrl,
      String profileImageUrlHttps,
      }) {
    this._id = id;
    this._idStr = idStr;
    this._name = name;
    this._screenName = screenName;
    this._profileImageUrl = profileImageUrl;
    this._profileImageUrlHttps = profileImageUrlHttps;
  }

  int get id => _id;
  set id(int id) => _id = id;
  String get idStr => _idStr;
  set idStr(String idStr) => _idStr = idStr;
  String get name => _name;
  set name(String name) => _name = name;
  String get screenName => _screenName;
  set screenName(String screenName) => _screenName = screenName;
   String get profileImageUrl => _profileImageUrl;
  set profileImageUrl(String profileImageUrl) =>
      _profileImageUrl = profileImageUrl;
  String get profileImageUrlHttps => _profileImageUrlHttps;
  set profileImageUrlHttps(String profileImageUrlHttps) =>
      _profileImageUrlHttps = profileImageUrlHttps;
  
  User.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _idStr = json['id_str'];
    _name = json['name'];
    _screenName = json['screen_name'];
    _profileImageUrl = json['profile_image_url'];
    _profileImageUrlHttps = json['profile_image_url_https'];
  }
}