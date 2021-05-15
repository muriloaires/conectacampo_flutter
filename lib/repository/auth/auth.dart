import 'dart:convert';

import 'package:conectacampo/repository/auth/model/login_response.dart';
import 'package:conectacampo/repository/auth/model/sign_in_request.dart';
import 'package:http/http.dart' show Client;

class Auth {
  Client client = Client();
  final _baseUrl = 'https://conecta-campo.herokuapp.com/api/v1/sessions';

  Future<LoginResponse> signIn(SingInRequest body) async {
    final response = await client.get(Uri.parse(_baseUrl));
    print(response.body.toString());

    if (response.statusCode == 200) {
      return LoginResponse.fromJson(json.decode(response.body));
    } else if (response.statusCode == 404) {
      return Future.error('user not found');
    } else {
      return Future.error('sing_in_error');
    }
  }
}
