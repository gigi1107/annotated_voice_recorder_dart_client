part of swagger.api;

class PhraseRequest {
  
  int userId = null;

  int phraseSetId = null;

  PhraseRequest();

  @override
  String toString() {
    return 'PhraseRequest[userId=$userId, phraseSetId=$phraseSetId, ]';
  }

  PhraseRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    userId = json['userId'];
    phraseSetId = json['phraseSetId'];
  }

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'phraseSetId': phraseSetId
     };
  }

  static List<PhraseRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<PhraseRequest>() : json.map((value) => new PhraseRequest.fromJson(value)).toList();
  }

  static Map<String, PhraseRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PhraseRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhraseRequest.fromJson(value));
    }
    return map;
  }
}
