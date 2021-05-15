class SignUpRequest {
  String _firstName;
  String _lastName;
  String _nickName;
  String _phoneNumber;
  String _vehicleLicensePlate;
  String _state;
  int _ceasaId;

  SignUpRequest(this._firstName, this._lastName, this._nickName,
      this._phoneNumber, this._vehicleLicensePlate, this._state, this._ceasaId);

  Map<String, dynamic> toJson() => {
        'first_name': _firstName,
        'last_name': _lastName,
        'nickname': _nickName,
        'phone_number': _phoneNumber,
        'vehicle_license_plate': _vehicleLicensePlate,
        'state': _state,
        'ceasa_id': _ceasaId,
      };
}
