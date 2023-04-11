part of swagger.api;

class UserPhraseWithAudioFile {
  
  UserPhrase userPhrase = null;

  String file = null;

  UserPhraseWithAudioFile();

  @override
  String toString() {
    return 'UserPhraseWithAudioFile[userPhrase=$userPhrase, file=$file, ]';
  }

  UserPhraseWithAudioFile.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userPhrase = new UserPhrase.fromJson(json['userPhrase']);
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userPhrase': userPhrase,
      'file': file
     };
  }

  static List<UserPhraseWithAudioFile> listFromJson(List<dynamic> json) {
    return json == null ? new List<UserPhraseWithAudioFile>() : json.map((value) => new UserPhraseWithAudioFile.fromJson(value)).toList();
  }

  static Map<String, UserPhraseWithAudioFile> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UserPhraseWithAudioFile>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UserPhraseWithAudioFile.fromJson(value));
    }
    return map;
  }
}
