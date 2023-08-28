import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Server calls Group Code

class ServerCallsGroup {
  static String baseUrl = 'http://77.68.119.174:5000/';
  static Map<String, String> headers = {};
  static RefreshAccountCall refreshAccountCall = RefreshAccountCall();
  static CreateAccountCall createAccountCall = CreateAccountCall();
  static CheckNewPeriodCall checkNewPeriodCall = CheckNewPeriodCall();
}

class RefreshAccountCall {
  Future<ApiCallResponse> call({
    String? userRef = '',
  }) {
    final body = '''
{
  "user_ref": "${userRef}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'refresh account',
      apiUrl: '${ServerCallsGroup.baseUrl}/refresh_account',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: true,
    );
  }
}

class CreateAccountCall {
  Future<ApiCallResponse> call({
    String? userRef = '',
  }) {
    final body = '''
{
  "user_ref": "${userRef}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create account',
      apiUrl: '${ServerCallsGroup.baseUrl}/create_account',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class CheckNewPeriodCall {
  Future<ApiCallResponse> call({
    String? userRef = '',
  }) {
    final body = '''
{
  "user_ref": "${userRef}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'check new period',
      apiUrl: '${ServerCallsGroup.baseUrl}/new_period',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: body,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

/// End Server calls Group Code

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

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list);
  } catch (_) {
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar);
  } catch (_) {
    return isList ? '[]' : '{}';
  }
}
