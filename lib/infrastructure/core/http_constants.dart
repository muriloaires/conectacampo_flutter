import 'dart:convert';

import 'package:conectacampo/infrastructure/auth/model/model.dart';
import 'package:conectacampo/infrastructure/auth/token_repository.dart';
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

Future<Response> getAuthenticatedRequest(Uri url,
    {Map<String, String> headers}) async {
  final accessTokenHeader = {
    'Authorization': 'Bearer ${await getCurrentAcessToken()}'
  };

  headers ??= {};
  headers.addAll(accessTokenHeader);

  final response = await http.get(url, headers: headers);
  final code = response.statusCode;
  if (code == 401) {
    final refreshToken = await getCurrentRefreshToken();
    if (await getNewToken(refreshToken)) {
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

Future<bool> getNewToken(String refreshToken) async {
  final url = Uri.https(baseUrl, '$apiVersion/refresh_tokens');

  final responseToken =
      await http.post(url, headers: {'refresh_token': refreshToken});
  if (responseToken.statusCode != 200) {
    return false;
  }
  final user = UserResponse.fromJson(
      json.decode(responseToken.body) as Map<String, dynamic>);
  final token = jsonDecode(responseToken.body) as Map<String, String>;
  await saveTokens(user.accessToken, user.refreshToken);
  return true;
}
