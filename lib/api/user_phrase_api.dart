part of swagger.api;



class UserPhraseApi {
  final ApiClient apiClient;

  UserPhraseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Saves a userPhrase to db
  ///
  /// 
  Future<UserPhrase?> addUserPhrase(UserPhrase? body) async {
    Object? postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/userPhrase".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];


    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != "") {
      return
          apiClient.deserialize(response.body, 'UserPhrase') as UserPhrase ;
    } else {
      return null;
    }
  }
  /// Get a userPhrase by ID from the db
  ///
  /// 
  Future<UserPhrase?> getUserPhraseById(int? userPhraseId) async {
    Object? postBody = null;

    // verify required params are set
    if(userPhraseId == null) {
     throw new ApiException(400, "Missing required param: userPhraseId");
    }

    // create path and map variables
    String path = "/userPhrase/{userPhraseId}".replaceAll("{format}","json").replaceAll("{" + "userPhraseId" + "}", userPhraseId.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = [];

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != "") {
      return
          apiClient.deserialize(response.body, 'UserPhrase') as UserPhrase ;
    } else {
      return null;
    }
  }
}
