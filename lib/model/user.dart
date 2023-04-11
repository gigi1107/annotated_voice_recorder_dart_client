part of swagger.api;

class User {
  
  int? _id = null;

  String? _firstName = null;

  String? _lastName = null;

  String? _email = null;

  String? _project = null;


  User(this._id, this._firstName, this._lastName, this._email, this._project);


  int? get id => _id;

  @override
  String toString() {
    return 'User[id=$_id, firstName=$_firstName, lastName=$_lastName, email=$_email, project=$_project, ]';
  }

  User.fromJson(Map<String, dynamic>? json) {
    if (json == null) return;
    _id = json['id'];
    _firstName = json['firstName'];
    _lastName = json['lastName'];
    _email = json['email'];
    _project = json['project'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': _id,
      'firstName': _firstName,
      'lastName': _lastName,
      'email': _email,
      'project': _project
     };
  }

  static List<User> listFromJson(List<dynamic>? json) {
    return json == null ? <User>[] : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>>? json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }

  String? get firstName => _firstName;

  String? get lastName => _lastName;

  String? get email => _email;

  String? get project => _project;
}
