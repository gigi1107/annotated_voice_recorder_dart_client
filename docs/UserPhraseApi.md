# swagger.api.UserPhraseApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://indigenous.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserPhrase**](UserPhraseApi.md#addUserPhrase) | **POST** /userPhrase | Saves a userPhrase to db
[**deleteUserPhrase**](UserPhraseApi.md#deleteUserPhrase) | **DELETE** /userPhrase/{userPhrase} | Delete a userPhrase from the db
[**deleteUserPhraseById**](UserPhraseApi.md#deleteUserPhraseById) | **DELETE** /userPhrase/{userPhraseId} | Delete a userPhrase by Id
[**getUserPhraseById**](UserPhraseApi.md#getUserPhraseById) | **POST** /userPhrase/{userPhraseId} | Get a userPhrase by ID from the db
[**updateUserPhrase**](UserPhraseApi.md#updateUserPhrase) | **PUT** /userPhrase | Edits a userPhrase in the db

# **addUserPhrase**
> UserPhrase addUserPhrase(body)

Saves a userPhrase to db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseApi();
var body = new UserPhrase(); // UserPhrase | UserPhrase object

try {
    var result = api_instance.addUserPhrase(body);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseApi->addUserPhrase: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPhrase**](UserPhrase.md)| UserPhrase object | 

### Return type

[**UserPhrase**](UserPhrase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserPhrase**
> deleteUserPhrase(userPhrase)

Delete a userPhrase from the db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseApi();
var userPhrase = ; // UserPhrase | The userPhrase you want to delete

try {
    api_instance.deleteUserPhrase(userPhrase);
} catch (e) {
    print("Exception when calling UserPhraseApi->deleteUserPhrase: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPhrase** | [**UserPhrase**](.md)| The userPhrase you want to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserPhraseById**
> deleteUserPhraseById(userPhraseId)

Delete a userPhrase by Id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseApi();
var userPhraseId = 789; // int | The userPhraseID of the userPhrase you want to delete

try {
    api_instance.deleteUserPhraseById(userPhraseId);
} catch (e) {
    print("Exception when calling UserPhraseApi->deleteUserPhraseById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPhraseId** | **int**| The userPhraseID of the userPhrase you want to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPhraseById**
> UserPhrase getUserPhraseById(userPhraseId)

Get a userPhrase by ID from the db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseApi();
var userPhraseId = 789; // int | The userPhraseID of the userPhrase you want to fetch

try {
    var result = api_instance.getUserPhraseById(userPhraseId);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseApi->getUserPhraseById: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPhraseId** | **int**| The userPhraseID of the userPhrase you want to fetch | 

### Return type

[**UserPhrase**](UserPhrase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPhrase**
> updateUserPhrase(body)

Edits a userPhrase in the db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseApi();
var body = new UserPhrase(); // UserPhrase | UserPhrase object

try {
    api_instance.updateUserPhrase(body);
} catch (e) {
    print("Exception when calling UserPhraseApi->updateUserPhrase: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPhrase**](UserPhrase.md)| UserPhrase object | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

