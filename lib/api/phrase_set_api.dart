part of swagger.api;



class PhraseSetApi {
  final ApiClient apiClient;

  PhraseSetApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new phraseSet to the Database
  ///
  /// 
  Future<PhraseSet?> addPhraseSet(PhraseSet? body) async {
    Object? postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/phraseSet".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'PhraseSet') as PhraseSet ;
    } else {
      return null;
    }
  }
  /// Get a phraseSet by Id
  ///
  /// 
  Future<PhraseSet?> getPhraseSet(int? phraseSetId) async {
    Object? postBody = null;

    // verify required params are set
    if(phraseSetId == null) {
     throw new ApiException(400, "Missing required param: phraseSetId");
    }

    // create path and map variables
    String path = "/phraseSet/{phraseSetId}".replaceAll("{format}","json").replaceAll("{" + "phraseSetId" + "}", phraseSetId.toString());

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
          apiClient.deserialize(response.body, 'PhraseSet') as PhraseSet ;
    } else {
      return null;
    }
  }
}
