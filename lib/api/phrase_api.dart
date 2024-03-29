part of swagger.api;



class PhraseApi {
  final ApiClient apiClient;

  PhraseApi([ApiClient? apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Add a new phrase to the Database
  ///
  /// 
  Future<Phrase?> addPhrase(Phrase body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/phrase".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Phrase') as Phrase ;
    } else {
      return null;
    }
  }
  /// Gets Phrase objects in a list from a provided list of phraseIds from the Database.
  ///
  /// 
  Future<Phrase?> getAllPhrasesByIds({ required List<int> body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/phrase/batchGet".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'Phrase') as Phrase ;
    } else {
      return null;
    }
  }
  /// Gets a phrase with a given phraseId from the Database.
  ///
  /// 
  Future<Phrase?> getPhraseById(int? phraseId) async {
    Object? postBody = null;

    // verify required params are set
    if(phraseId == null) {
     throw new ApiException(400, "Missing required param: phraseId");
    }

    // create path and map variables
    String path = "/phrase/{phraseId}".replaceAll("{format}","json").replaceAll("{" + "phraseId" + "}", phraseId.toString());

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
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Phrase') as Phrase ;
    } else {
      return null;
    }
  }
}
