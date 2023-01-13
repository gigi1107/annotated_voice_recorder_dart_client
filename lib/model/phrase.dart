part of swagger.api;

class Phrase {
  
  int id = null;

  int phraseSetId = null;

  String original = null;

  String translation = null;

  String exampleRecordingPath = null;

  Phrase();

  @override
  String toString() {
    return 'Phrase[id=$id, phraseSetId=$phraseSetId, original=$original, translation=$translation, exampleRecordingPath=$exampleRecordingPath, ]';
  }

  Phrase.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    phraseSetId = json['phraseSetId'];
    original = json['original'];
    translation = json['translation'];
    exampleRecordingPath = json['exampleRecordingPath'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phraseSetId': phraseSetId,
      'original': original,
      'translation': translation,
      'exampleRecordingPath': exampleRecordingPath
     };
  }

  static List<Phrase> listFromJson(List<dynamic> json) {
    return json == null ? new List<Phrase>() : json.map((value) => new Phrase.fromJson(value)).toList();
  }

  static Map<String, Phrase> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Phrase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Phrase.fromJson(value));
    }
    return map;
  }
}
