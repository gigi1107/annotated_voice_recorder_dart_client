part of swagger.api;

class HttpBasicAuth implements Authentication {

  String username;
  String password;


  HttpBasicAuth(this.username, this.password);

  @override
  void applyToParams(Iterable<QueryParam> queryParams, Map<String, String> headerParams) {
    String str = (username == null ? "" : username) + ":" + (password == null ? "" : password);
    headerParams["Authorization"] = "Basic " + base64.encode(utf8.encode(str));
  }
}
