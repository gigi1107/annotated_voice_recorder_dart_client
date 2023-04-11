part of swagger.api;

class Phrase {
  
  int? _id = null;

  int? _phraseSetId = null;

  String? _original = null;

  String? _translation = null;

  String? _exampleRecordingPath = null;


  Phrase(this._id, this._phraseSetId, this._original, this._translation,
      this._exampleRecordingPath);


  int? get id => _id;

  @override
  String toString() {
    return 'Phrase[id=$_id, phraseSetId=$_phraseSetId, original=$_original, translation=$_translation, exampleRecordingPath=$_exampleRecordingPath, ]';
  }

  Phrase.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _id = json['id'];
    _phraseSetId = json['phraseSetId'];
    _original = json['original'];
    _translation = json['translation'];
    _exampleRecordingPath = json['exampleRecordingPath'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'phraseSetId': _phraseSetId,
      'original': _original,
      'translation': _translation,
      'exampleRecordingPath': _exampleRecordingPath
     };
  }

  static List<Phrase> listFromJson(List<dynamic>? json) {
    return json == null ? <Phrase>[] : json.map((value) => new Phrase.fromJson(value)).toList();
  }

  static Map<String, Phrase> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, Phrase>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Phrase.fromJson(value));
    }
    return map;
  }

  int? get phraseSetId => _phraseSetId;

  String? get original => _original;

  String? get translation => _translation;

  String? get exampleRecordingPath => _exampleRecordingPath;
}
