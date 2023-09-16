import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start Server calls Group Code

class ServerCallsGroup {
  static String baseUrl = 'http://77.68.119.174:5000';
  static Map<String, String> headers = {};
  static RefreshAccountCall refreshAccountCall = RefreshAccountCall();
  static CreateAccountCall createAccountCall = CreateAccountCall();
  static UpdateMonthlyBudgetCall updateMonthlyBudgetCall =
      UpdateMonthlyBudgetCall();
  static UpdateStartDateCall updateStartDateCall = UpdateStartDateCall();
  static UpdateSavingsCall updateSavingsCall = UpdateSavingsCall();
  static ExcludeTransactionCall excludeTransactionCall =
      ExcludeTransactionCall();
}

class RefreshAccountCall {
  Future<ApiCallResponse> call({
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
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
      body: ffApiRequestBody,
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
    double? monthlyBudget,
    double? tab,
    String? startDate = '',
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
{
  "user_ref": "${userRef}",
  "monthly_budget": ${monthlyBudget},
  "tab": ${tab},
  "start_date": "${startDate}"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'create account',
      apiUrl: '${ServerCallsGroup.baseUrl}/create_account',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateMonthlyBudgetCall {
  Future<ApiCallResponse> call({
    double? newMb,
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
{
  "user_ref": "${userRef}",
  "new_mb": ${newMb}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update monthly budget',
      apiUrl: '${ServerCallsGroup.baseUrl}/update_mb',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateStartDateCall {
  Future<ApiCallResponse> call({
    String? startDate = '',
    double? tab,
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
{
  "user_ref": "${userRef}",
  "start_date": "${startDate}",
  "tab": ${tab}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update start date',
      apiUrl: '${ServerCallsGroup.baseUrl}/update_start_date',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class UpdateSavingsCall {
  Future<ApiCallResponse> call({
    double? change,
    String? action = '',
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
{
  "user_ref": "${userRef}",
  "action": "${action}",
  "change": ${change}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'update savings',
      apiUrl: '${ServerCallsGroup.baseUrl}/update_savings',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }
}

class ExcludeTransactionCall {
  Future<ApiCallResponse> call({
    double? transactionAmount,
    String? userRef = '',
  }) {
    final ffApiRequestBody = '''
{
  "user_ref": "${userRef}",
  "transaction_amount": ${transactionAmount}
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'exclude transaction',
      apiUrl: '${ServerCallsGroup.baseUrl}/exclude_transaction',
      callType: ApiCallType.POST,
      headers: {
        ...ServerCallsGroup.headers,
      },
      params: {},
      body: ffApiRequestBody,
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
