part of swagger.api;

class UserPhraseComment {
  
  int id = null;

  int phraseId = null;

  String comment = null;

  DateTime dateTime = null;

  int userId = null;

  UserPhraseComment();

  @override
  String toString() {
    return 'UserPhraseComment[id=$id, phraseId=$phraseId, comment=$comment, dateTime=$dateTime, userId=$userId, ]';
  }

  UserPhraseComment.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    phraseId = json['phraseId'];
    comment = json['comment'];
    dateTime = json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phraseId': phraseId,
      'comment': comment,
      'dateTime': dateTime == null ? '' : dateTime.toUtc().toIso8601String(),
      'userId': userId
     };
  }

  static List<UserPhraseComment> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPhraseComment>() : json.map((value) => new UserPhraseComment.fromJson(value)).toList();
  }

  static Map<String, UserPhraseComment> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPhraseComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhraseComment.fromJson(value));
    }
    return map;
  }
}
