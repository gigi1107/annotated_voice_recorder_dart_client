part of swagger.api;

class User {
  
  int id = null;

  String firstName = null;

  String lastName = null;

  String email = null;

  String project = null;

  User();

  @override
  String toString() {
    return 'User[id=$id, firstName=$firstName, lastName=$lastName, email=$email, project=$project, ]';
  }

  User.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    firstName = json['firstName'];
    lastName = json['lastName'];
    email = json['email'];
    project = json['project'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'project': project
     };
  }

  static List<User> listFromJson(List<dynamic> json) {
    return json == null ? new List<User>() : json.map((value) => new User.fromJson(value)).toList();
  }

  static Map<String, User> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, User>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new User.fromJson(value));
    }
    return map;
  }
}
