part of swagger.api;



class UserPhraseCountApi {
  final ApiClient apiClient;

  UserPhraseCountApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// get All Remaining PhraseIds For A User And PhraseSet
  ///
  /// 
  Future<List<int>?> getAllRemainingPhraseIdsForAUserAndPhraseSet(PhraseRequest? body) async {
    Object? postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/phraseIds".replaceAll("{format}","json");

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
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<int>') as List).map((item) => item as int).toList();
    } else {
      return null;
    }
  }
}
