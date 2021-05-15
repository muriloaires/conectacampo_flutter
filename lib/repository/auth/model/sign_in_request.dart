class SingInRequest {
  String _phoneNumber;

  String get phoneNumber {
    return _phoneNumber;
  }
  SingInRequest(this._phoneNumber);


  Map<String, dynamic> toJson() => {'phone_number': _phoneNumber};
}
