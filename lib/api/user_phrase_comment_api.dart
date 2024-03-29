part of swagger.api;



class UserPhraseCommentApi {
  final ApiClient apiClient;

  UserPhraseCommentApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new UserPhraseComment to the Database
  ///
  /// 
  Future<UserPhraseComment?> addUserPhraseComment(UserPhraseComment? body) async {
    Object? postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/userPhraseComment".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'UserPhraseComment') as UserPhraseComment ;
    } else {
      return null;
    }
  }
  /// Get a UserPhraseComment by Id
  ///
  /// 
  Future<UserPhraseComment?> getUserPhraseComment(int? userPhraseCommentId) async {
    Object? postBody = null;

    // verify required params are set
    if(userPhraseCommentId == null) {
     throw new ApiException(400, "Missing required param: userPhraseCommentId");
    }

    // create path and map variables
    String path = "/userPhraseComment/{userPhraseCommentId}".replaceAll("{format}","json").replaceAll("{" + "userPhraseCommentId" + "}", userPhraseCommentId.toString());

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
          apiClient.deserialize(response.body, 'UserPhraseComment') as UserPhraseComment ;
    } else {
      return null;
    }
  }
}
