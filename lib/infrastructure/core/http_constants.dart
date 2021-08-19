import 'dart:convert';

import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/auth/token_repository.dart';
import 'package:conectacampo/infrastructure/auth/user_repository.dart';
import 'package:http/http.dart';
import 'package:http/http.dart' as http;

const baseUrl = 'conecta-campo-staging.herokuapp.com';
const apiVersion = 'api/v1';

String getCurrentApiUrl() => '$baseUrl$apiVersion';

Map<String, String> getApiHeader() {
  return {
    'Api-Token':
        'eyJhbGciOiJIUzI1NiJ9.eyJ0b2tlbiI6Ijc4bTBxIyNqejBiV25rWFIifQ.AUD2pRTP_c5AF-gqo8_yIE07W_P09k2A9mTLvsKOG6g'
  };
}

Future<Response> getAuthenticatedRequest(
    Uri url, Map<String, String>? headers) async {
  final accessTokenHeader = {
    'Authorization': 'Bearer ${await getCurrentAcessToken()}'
  };

  headers ??= {};
  headers.addAll(accessTokenHeader);

  final response = await http.get(url, headers: headers);
  final code = response.statusCode;
  if (code == 401) {
    if (await getNewToken()) {
      final newToken = await getCurrentAcessToken();
      headers.addAll({'Authorization': 'Bearer $newToken'});
      final newReponse = await http.get(url, headers: headers);
      return newReponse;
    } else {
      return response;
    }
  }
  return response;
}

Future<Response> getAuthenticatedPostRequest(
    Uri url, Map<String, String>? headers, String body) async {
  final accessTokenHeader = {
    'Authorization': 'Bearer ${await getCurrentAcessToken()}'
  };

  headers ??= {};
  headers.addAll(accessTokenHeader);
  headers.addAll({'content-type': 'application/json'});
  final response = await http.post(url, headers: headers, body: body);
  final code = response.statusCode;
  if (code == 401) {
    if (await getNewToken()) {
      final newToken = await getCurrentAcessToken();
      headers.addAll({'Authorization': 'Bearer $newToken'});
      final newReponse = await http.post(url, headers: headers, body: body);
      return newReponse;
    } else {
      return response;
    }
  }
  return response;
}

Future<Response> getAuthenticatedPatchRequest(Uri url,
    {Map<String, String>? headers, String? body}) async {
  final accessTokenHeader = {
    'Authorization': 'Bearer ${await getCurrentAcessToken()}'
  };

  headers ??= {};
  headers.addAll(accessTokenHeader);
  headers.addAll({'content-type': 'application/json'});
  final response = await http.patch(url, headers: headers, body: body);
  final code = response.statusCode;
  if (code == 401) {
    if (await getNewToken()) {
      final newToken = await getCurrentAcessToken();
      headers.addAll({'Authorization': 'Bearer $newToken'});
      final newReponse = await http.patch(url, headers: headers, body: body);
      return newReponse;
    } else {
      return response;
    }
  }
  return response;
}

Future<Response> getAuthenticatedDeleteRequest(
    Uri url, Map<String, String>? headers) async {
  final accessTokenHeader = {
    'Authorization': 'Bearer ${await getCurrentAcessToken()}'
  };

  headers ??= {};
  headers.addAll(accessTokenHeader);
  headers.addAll({'content-type': 'application/json'});
  final response = await http.delete(url, headers: headers);
  final code = response.statusCode;
  if (code == 401) {
    if (await getNewToken()) {
      final newToken = await getCurrentAcessToken();
      headers.addAll({'Authorization': 'Bearer $newToken'});
      final newReponse = await http.delete(url, headers: headers);
      return newReponse;
    } else {
      return response;
    }
  }
  return response;
}

Future<bool> getNewToken() async {
  final refreshToken = await getCurrentRefreshToken();
  final url = Uri.https(
    baseUrl,
    '$apiVersion/refresh_tokens',
  );

  final responseToken = await http.post(url,
      headers: getApiHeader(), body: {'refresh_token': refreshToken});
  if (responseToken.statusCode != 200) {
    return false;
  }
  final user = UserResponse.fromJson(
      json.decode(responseToken.body) as Map<String, dynamic>);
  await persistUser(user);
  await saveTokens(user.accessToken, user.refreshToken);
  return true;
}
