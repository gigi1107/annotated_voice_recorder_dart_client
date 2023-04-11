part of swagger.api;

class PhraseSet {
  
  int? _id = null;

  String? _phraseSetName = null;

  DateTime? _startDate = null;

  DateTime? _endDate = null;

  PhraseSet(this._id, this._phraseSetName, this._startDate, this._endDate);


  int? get id => _id;

  @override
  String toString() {
    return 'PhraseSet[id=$_id, phraseSetName=$_phraseSetName, startDate=$_startDate, endDate=$_endDate, ]';
  }

  PhraseSet.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _id = json['id'];
    _phraseSetName = json['phraseSetName'];
    _startDate = json['startDate'] == null ? null : DateTime.parse(json['startDate']);
    _endDate = json['endDate'] == null ? null : DateTime.parse(json['endDate']);
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'phraseSetName': _phraseSetName,
      'startDate': _startDate == null ? '' : _startDate?.toUtc().toIso8601String(),
      'endDate': _endDate == null ? '' : _endDate?.toUtc().toIso8601String()
     };
  }

  static List<PhraseSet> listFromJson(List<dynamic>? json) {
    return json == null ? <PhraseSet>[] : json.map((value) => new PhraseSet.fromJson(value)).toList();
  }

  static Map<String, PhraseSet> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, PhraseSet>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new PhraseSet.fromJson(value));
    }
    return map;
  }

  String? get phraseSetName => _phraseSetName;

  DateTime? get startDate => _startDate;

  DateTime? get endDate => _endDate;
}
