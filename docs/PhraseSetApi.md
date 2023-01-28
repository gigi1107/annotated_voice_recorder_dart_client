# swagger.api.PhraseSetApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://indigenous.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addPhraseSet**](PhraseSetApi.md#addPhraseSet) | **POST** /phraseSet | Add a new phraseSet to the Database
[**deletePhraseSet**](PhraseSetApi.md#deletePhraseSet) | **DELETE** /phraseSet/{phraseSetId} | Delete a phraseSet from the db
[**getPhraseSet**](PhraseSetApi.md#getPhraseSet) | **POST** /phraseSet/{phraseSetId} | Get a phraseSet by Id
[**updatePhraseSet**](PhraseSetApi.md#updatePhraseSet) | **PUT** /phraseSet | Update an existing phraseSet

# **addPhraseSet**
> PhraseSet addPhraseSet(body)

Add a new phraseSet to the Database

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhraseSetApi();
var body = new PhraseSet(); // PhraseSet | PhraseSet object that needs to be added to the Database

try {
    var result = api_instance.addPhraseSet(body);
    print(result);
} catch (e) {
    print("Exception when calling PhraseSetApi->addPhraseSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PhraseSet**](PhraseSet.md)| PhraseSet object that needs to be added to the Database | 

### Return type

[**PhraseSet**](PhraseSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deletePhraseSet**
> deletePhraseSet(phraseSetId)

Delete a phraseSet from the db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhraseSetApi();
var phraseSetId = 789; // int | The phraseSet you want to delete

try {
    api_instance.deletePhraseSet(phraseSetId);
} catch (e) {
    print("Exception when calling PhraseSetApi->deletePhraseSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phraseSetId** | **int**| The phraseSet you want to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhraseSet**
> PhraseSet getPhraseSet(phraseSetId)

Get a phraseSet by Id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhraseSetApi();
var phraseSetId = 789; // int | The phraseSet Id you want to get

try {
    var result = api_instance.getPhraseSet(phraseSetId);
    print(result);
} catch (e) {
    print("Exception when calling PhraseSetApi->getPhraseSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **phraseSetId** | **int**| The phraseSet Id you want to get | 

### Return type

[**PhraseSet**](PhraseSet.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updatePhraseSet**
> updatePhraseSet(body)

Update an existing phraseSet

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new PhraseSetApi();
var body = new PhraseSet(); // PhraseSet | PhraseSet object that needs to be added to the Database

try {
    api_instance.updatePhraseSet(body);
} catch (e) {
    print("Exception when calling PhraseSetApi->updatePhraseSet: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PhraseSet**](PhraseSet.md)| PhraseSet object that needs to be added to the Database | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

