part of swagger.api;

class UserPhraseComment {
  
  int? _id = null;

  int? _phraseId = null;

  String? _comment = null;

  DateTime? _dateTime = null;

  int? _userId = null;


  int? get id => _id;

  @override
  String toString() {
    return 'UserPhraseComment[id=$_id, phraseId=$_phraseId, comment=$_comment, dateTime=$_dateTime, userId=$_userId, ]';
  }

  UserPhraseComment.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _id = json['id'];
    _phraseId = json['phraseId'];
    _comment = json['comment'];
    _dateTime = json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    _userId = json['userId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'phraseId': _phraseId,
      'comment': _comment,
      'dateTime': _dateTime == null ? '' : _dateTime?.toUtc().toIso8601String(),
      'userId': _userId
     };
  }

  static List<UserPhraseComment> listFromJson(List<dynamic>? json) {
    return json == null ? <UserPhraseComment>[] : json.map((value) => new UserPhraseComment.fromJson(value)).toList();
  }

  static Map<String, UserPhraseComment> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, UserPhraseComment>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhraseComment.fromJson(value));
    }
    return map;
  }

  int? get phraseId => _phraseId;

  String? get comment => _comment;

  DateTime? get dateTime => _dateTime;

  int? get userId => _userId;
}
