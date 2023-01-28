part of swagger.api;

class UserPhrase {
  
  int id = null;

  int phraseId = null;

  int userId = null;

  DateTime dateTime = null;

  String filepath = null;

  UserPhrase();

  @override
  String toString() {
    return 'UserPhrase[id=$id, phraseId=$phraseId, userId=$userId, dateTime=$dateTime, filepath=$filepath, ]';
  }

  UserPhrase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    phraseId = json['phraseId'];
    userId = json['userId'];
    dateTime = json['dateTime'] == null ? null : DateTime.parse(json['dateTime']);
    filepath = json['filepath'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phraseId': phraseId,
      'userId': userId,
      'dateTime': dateTime == null ? '' : dateTime.toUtc().toIso8601String(),
      'filepath': filepath
     };
  }

  static List<UserPhrase> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPhrase>() : json.map((value) => new UserPhrase.fromJson(value)).toList();
  }

  static Map<String, UserPhrase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPhrase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhrase.fromJson(value));
    }
    return map;
  }
}
