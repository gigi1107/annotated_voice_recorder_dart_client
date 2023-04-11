# swagger.api.UserPhraseWithAudioApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://indigenous.io/v1*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getFileFromBucket**](UserPhraseWithAudioApi.md#getFileFromBucket) | **POST** /file/{keypath} | Gets file from bucket with given keypath
[**saveAudioFileToBucket**](UserPhraseWithAudioApi.md#saveAudioFileToBucket) | **POST** /file | Saves a voice recording to bucket for a particular user

# **getFileFromBucket**
> User getFileFromBucket(keypath)

Gets file from bucket with given keypath

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseWithAudioApi();
var keypath = keypath_example; // String | The path of the file you want to fetch from the bucket.

try {
    var result = api_instance.getFileFromBucket(keypath);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseWithAudioApi->getFileFromBucket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keypath** | **String**| The path of the file you want to fetch from the bucket. | 

### Return type

[**User**](User.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **saveAudioFileToBucket**
> UserPhrase saveAudioFileToBucket(body)

Saves a voice recording to bucket for a particular user

### Example
```dart
import 'package:swagger/api.dart';

var api_instance = new UserPhraseWithAudioApi();
var body = new UserPhraseWithAudioFile(); // UserPhraseWithAudioFile | UserPhraseWithAudioFile object

try {
    var result = api_instance.saveAudioFileToBucket(body);
    print(result);
} catch (e) {
    print("Exception when calling UserPhraseWithAudioApi->saveAudioFileToBucket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserPhraseWithAudioFile**](UserPhraseWithAudioFile.md)| UserPhraseWithAudioFile object | 

### Return type

[**UserPhrase**](UserPhrase.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

