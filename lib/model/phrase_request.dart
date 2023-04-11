part of swagger.api;

class PhraseRequest {
  
  int? _userId = null;

  int? _phraseSetId = null;


  PhraseRequest(this._userId, this._phraseSetId);


  int? get userId => _userId;

  @override
  String toString() {
    return 'PhraseRequest[userId=$_userId, phraseSetId=$_phraseSetId, ]';
  }

  PhraseRequest.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _userId = json['userId'];
    _phraseSetId = json['phraseSetId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': _userId,
      'phraseSetId': _phraseSetId
     };
  }

  static List<PhraseRequest> listFromJson(List<dynamic>? json) {
    return json == null ? <PhraseRequest>[] : json.map((value) => new PhraseRequest.fromJson(value)).toList();
  }

  static Map<String, PhraseRequest> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, PhraseRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhraseRequest.fromJson(value));
    }
    return map;
  }

  int? get phraseSetId => _phraseSetId;
}
