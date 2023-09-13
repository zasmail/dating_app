import 'dart:convert';
import 'dart:typed_data';

import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class GetCWGroupCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CW Group',
      apiUrl:
          'https://api.demo.pactsafe.com/v1.1/contracts/4256/versions/@published',
      callType: ApiCallType.GET,
      headers: {
        'Authorization': 'Bearer TW2BTHIDHOArPCR9hyVXSuRshhI5lx4uDEcjJG2fI70_',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic body(dynamic response) => getJsonField(
        response,
        r'''$.data.body''',
      );
}

class GetCWCall {
  static Future<ApiCallResponse> call() {
    return ApiManager.instance.makeApiCall(
      callName: 'Get CW',
      apiUrl:
          'https://demo.pactsafe.io/load/json?sid=28bf3ff7-d62d-4017-b7b3-f3f7c316532e&gkey=embedded-testgroup2',
      callType: ApiCallType.GET,
      headers: {},
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
    );
  }

  static dynamic group(dynamic response) => getJsonField(
        response,
        r'''$.type''',
      );
  static dynamic contractIDs(dynamic response) => getJsonField(
        response,
        r'''$.contracts''',
        true,
      );
  static dynamic versions(dynamic response) => getJsonField(
        response,
        r'''$.versions''',
        true,
      );
  static dynamic majorVersions(dynamic response) => getJsonField(
        response,
        r'''$.major_versions''',
        true,
      );
  static dynamic contractData(dynamic response) => getJsonField(
        response,
        r'''$.contract_data''',
        true,
      );
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
