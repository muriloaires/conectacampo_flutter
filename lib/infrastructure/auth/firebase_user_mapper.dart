import 'package:conectacampo/domain/auth/user.dart' as LocalUser;
import 'package:conectacampo/domain/auth/value_objects.dart';
import 'package:firebase_auth/firebase_auth.dart' ;

extension FirebaseUserDomainX on User {
  LocalUser.User toDomain(){
    return LocalUser.User(id: UniqueId.fromUniqueString(uid));
  }
}