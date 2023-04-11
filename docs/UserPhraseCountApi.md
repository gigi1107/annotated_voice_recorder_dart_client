# swagger.api.UserPhraseCountApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://indigenous.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllRemainingPhraseIdsForAUserAndPhraseSet**](UserPhraseCountApi.md#getAllRemainingPhraseIdsForAUserAndPhraseSet) | **POST** /phraseIds | get All Remaining PhraseIds For A User And PhraseSet

# **getAllRemainingPhraseIdsForAUserAndPhraseSet**
> List<int> getAllRemainingPhraseIdsForAUserAndPhraseSet(body)

get All Remaining PhraseIds For A User And PhraseSet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseCountApi();
var body = new PhraseRequest(); // PhraseRequest | PhraseRequest object

try {
    var result = api_instance.getAllRemainingPhraseIdsForAUserAndPhraseSet(body);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseCountApi->getAllRemainingPhraseIdsForAUserAndPhraseSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PhraseRequest**](PhraseRequest.md)| PhraseRequest object | 

### Return type

**List<int>**

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

