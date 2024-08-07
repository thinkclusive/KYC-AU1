import 'dart:convert';
import 'dart:typed_data';
import '../schema/structs/index.dart';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start payment Group Code

class PaymentGroup {
  static String getBaseUrl() => 'https://papi.hayaservice.com/api';
  static Map<String, String> headers = {
    'Content-Type': 'application/json',
  };
  static LoginCall loginCall = LoginCall();
  static MeCall meCall = MeCall();
  static LoginwithsocialCall loginwithsocialCall = LoginwithsocialCall();
  static ConfirmPaymentCall confirmPaymentCall = ConfirmPaymentCall();
  static ListTransectionsCall listTransectionsCall = ListTransectionsCall();
}

class LoginCall {
  Future<ApiCallResponse> call({
    String? email = '',
    String? password = '',
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "username": "${email}",
  "password": "${password}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'login',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class MeCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'me',
      apiUrl: '${baseUrl}/users/me',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class LoginwithsocialCall {
  Future<ApiCallResponse> call({
    String? token = '',
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "token": "${token}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'loginwithsocial',
      apiUrl: '${baseUrl}/loginwithsocial',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ConfirmPaymentCall {
  Future<ApiCallResponse> call({
    String? paymentUuid = '',
    int? timestamp,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "uuid": "${paymentUuid}",
  "timestamp": ${timestamp}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'ConfirmPayment',
      apiUrl: '${baseUrl}/me/confirmPayment',
      callType: ApiCallType.POST,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ListTransectionsCall {
  Future<ApiCallResponse> call({
    int? page = 1,
  }) async {
    final baseUrl = PaymentGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'ListTransections',
      apiUrl: '${baseUrl}/me/transections',
      callType: ApiCallType.GET,
      headers: {
        'Content-Type': 'application/json',
      },
      params: {
        'page': page,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End payment Group Code

/// Start auth Group Code

class AuthGroup {
  static String getBaseUrl() => 'https://auth.hayaservice.com/api';
  static Map<String, String> headers = {};
  static SigninCall signinCall = SigninCall();
}

class SigninCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = AuthGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'signin',
      apiUrl: '${baseUrl}/login',
      callType: ApiCallType.POST,
      headers: {},
      params: {},
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End auth Group Code

/// Start menutable Group Code

class MenutableGroup {
  static String getBaseUrl() => 'https://getzinga.com/api';
  static Map<String, String> headers = {};
  static OutletsCall outletsCall = OutletsCall();
}

class OutletsCall {
  Future<ApiCallResponse> call() async {
    final baseUrl = MenutableGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'outlets',
      apiUrl: '${baseUrl}/outlets',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

/// End menutable Group Code

/// Start sumsub Group Code

class SumsubGroup {
  static String getBaseUrl() => 'https://api.sumsub.com';
  static Map<String, String> headers = {
    'X-App-Token':
        'sbx:bCrEe2zWDeza701kr0v39Rtn.R4CERRCB1oMyGg0jc1gq3WgE3vwVHSnW',
  };
}

/// End sumsub Group Code

class GetKycTokenCall {
  static Future<ApiCallResponse> call() async {
    return ApiManager.instance.makeApiCall(
      callName: 'getKycToken',
      apiUrl: '/kyctoken',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
