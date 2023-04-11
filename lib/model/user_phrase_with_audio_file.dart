part of swagger.api;

class UserPhraseWithAudioFile {
  
  UserPhrase? _userPhrase = null;

  String? _file = null;


  @override
  String toString() {
    return 'UserPhraseWithAudioFile[userPhrase=$_userPhrase, file=$_file, ]';
  }

  UserPhraseWithAudioFile.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _userPhrase = new UserPhrase.fromJson(json['userPhrase']);
    _file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userPhrase': _userPhrase,
      'file': _file
     };
  }

  static List<UserPhraseWithAudioFile> listFromJson(List<dynamic>? json) {
    return json == null ? <UserPhraseWithAudioFile>[] : json.map((value) => new UserPhraseWithAudioFile.fromJson(value)).toList();
  }

  static Map<String, UserPhraseWithAudioFile> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, UserPhraseWithAudioFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhraseWithAudioFile.fromJson(value));
    }
    return map;
  }
}
