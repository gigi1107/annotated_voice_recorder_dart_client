# swagger.api.UserPhraseCommentApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://indigenous.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addUserPhraseComment**](UserPhraseCommentApi.md#addUserPhraseComment) | **POST** /userPhraseComment | Add a new UserPhraseComment to the Database
[**deleteUserPhraseComment**](UserPhraseCommentApi.md#deleteUserPhraseComment) | **DELETE** /userPhraseComment/{userPhraseCommentId} | Delete a UserPhraseComment from the db
[**getUserPhraseComment**](UserPhraseCommentApi.md#getUserPhraseComment) | **POST** /userPhraseComment/{userPhraseCommentId} | Get a UserPhraseComment by Id
[**updateUserPhraseComment**](UserPhraseCommentApi.md#updateUserPhraseComment) | **PUT** /userPhraseComment | Update an existing userPhraseComment

# **addUserPhraseComment**
> UserPhraseComment addUserPhraseComment(body)

Add a new UserPhraseComment to the Database

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseCommentApi();
var body = new UserPhraseComment(); // UserPhraseComment | UserPhraseComment object that needs to be added to the Database

try {
    var result = api_instance.addUserPhraseComment(body);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseCommentApi->addUserPhraseComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPhraseComment**](UserPhraseComment.md)| UserPhraseComment object that needs to be added to the Database | 

### Return type

[**UserPhraseComment**](UserPhraseComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteUserPhraseComment**
> deleteUserPhraseComment(userPhraseCommentId)

Delete a UserPhraseComment from the db

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseCommentApi();
var userPhraseCommentId = 789; // int | The UserPhraseComment you want to delete

try {
    api_instance.deleteUserPhraseComment(userPhraseCommentId);
} catch (e) {
    print("Exception when calling UserPhraseCommentApi->deleteUserPhraseComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPhraseCommentId** | **int**| The UserPhraseComment you want to delete | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUserPhraseComment**
> UserPhraseComment getUserPhraseComment(userPhraseCommentId)

Get a UserPhraseComment by Id

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseCommentApi();
var userPhraseCommentId = 789; // int | The Id of UserPhraseComment you want to get

try {
    var result = api_instance.getUserPhraseComment(userPhraseCommentId);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseCommentApi->getUserPhraseComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPhraseCommentId** | **int**| The Id of UserPhraseComment you want to get | 

### Return type

[**UserPhraseComment**](UserPhraseComment.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateUserPhraseComment**
> updateUserPhraseComment(body)

Update an existing userPhraseComment

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseCommentApi();
var body = new UserPhraseComment(); // UserPhraseComment | UserPhraseComment object that needs to be added to the Database

try {
    api_instance.updateUserPhraseComment(body);
} catch (e) {
    print("Exception when calling UserPhraseCommentApi->updateUserPhraseComment: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPhraseComment**](UserPhraseComment.md)| UserPhraseComment object that needs to be added to the Database | 

### Return type

void (empty response body)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: Not defined

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

