part of swagger.api;

class UserPhrase {
  
  int? _id = null;

  int? _phraseId = null;

  int? _userId = null;

  DateTime? _dateTime = null;

  String? _filepath = null;


  UserPhrase(this._id, this._phraseId, this._userId, this._dateTime, this._filepath);



  @override
  String toString() {
    return 'UserPhrase[id=$_id, phraseId=$_phraseId, userId=$_userId, dateTime=$_dateTime, filepath=$_filepath, ]';
  }

  UserPhrase.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _id = json['id'];
    _phraseId = json['phraseId'];
    _userId = json['userId'];
    _dateTime = json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    _filepath = json['filepath'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'phraseId': _phraseId,
      'userId': _userId,
      'dateTime': _dateTime == null ? '' : _dateTime?.toUtc().toIso8601String(),
      'filepath': _filepath
     };
  }

  static List<UserPhrase> listFromJson(List<dynamic>? json) {
    return json == null ? <UserPhrase>[] : json.map((value) => new UserPhrase.fromJson(value)).toList();
  }

  static Map<String, UserPhrase> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, UserPhrase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhrase.fromJson(value));
    }
    return map;
  }
}
