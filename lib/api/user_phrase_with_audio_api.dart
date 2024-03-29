part of swagger.api;



class UserPhraseWithAudioApi {
  final ApiClient apiClient;

  UserPhraseWithAudioApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Gets file from bucket with given keypath
  ///
  /// 
  Future<User?> getFileFromBucket(String? keypath) async {
    Object? postBody = null;

    // verify required params are set
    if(keypath == null) {
     throw new ApiException(400, "Missing required param: keypath");
    }

    // create path and map variables
    String path = "/file/{keypath}".replaceAll("{format}","json").replaceAll("{" + "keypath" + "}", keypath.toString());

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
          apiClient.deserialize(response.body, 'User') as User ;
    } else {
      return null;
    }
  }
  /// Saves a voice recording to bucket for a particular user
  ///
  /// 
  Future<UserPhrase?> saveAudioFileToBucket(UserPhraseWithAudioFile? body) async {
    Object? postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/file".replaceAll("{format}","json");

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
}
