part of swagger.api;

class PhraseSet {
  
  int id = null;

  String phraseSetName = null;

  DateTime startDate = null;

  DateTime endDate = null;

  PhraseSet();

  @override
  String toString() {
    return 'PhraseSet[id=$id, phraseSetName=$phraseSetName, startDate=$startDate, endDate=$endDate, ]';
  }

  PhraseSet.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    phraseSetName = json['phraseSetName'];
    startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'phraseSetName': phraseSetName,
      'startDate': startDate == null ? '' : startDate.toUtc().toIso8601String(),
      'endDate': endDate == null ? '' : endDate.toUtc().toIso8601String()
     };
  }

  static List<PhraseSet> listFromJson(List<dynamic> json) {
    return json == null ? new List<PhraseSet>() : json.map((value) => new PhraseSet.fromJson(value)).toList();
  }

  static Map<String, PhraseSet> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, PhraseSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhraseSet.fromJson(value));
    }
    return map;
  }
}
