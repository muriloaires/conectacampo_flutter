class LoginResponse {
  String _firstName;
  String _lastName;
  String _nickName;
  String _phoneNumber;
  String _vehicleLicensePlate;
  String _state;
  int _ceasaId;
  String _accessToken;
  String _refreshToken;

  LoginResponse.fromJson(dynamic decode) {
    _firstName = decode['first_name'] as String;
    _lastName = decode['last_name'] as String;
    _nickName = decode['nickname'] as String;
    _phoneNumber = decode['phone_number'] as String;
    _vehicleLicensePlate = decode['_vehicle_license_plate'] as String;
    _state = decode['state'] as String;
    _ceasaId = decode['ceasa_id'] as int;
    _accessToken = decode['access_token'] as String;
    _refreshToken = decode['refresh_token'] as String;
  }
}
