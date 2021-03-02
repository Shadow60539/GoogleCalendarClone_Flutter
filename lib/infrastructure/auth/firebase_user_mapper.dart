import 'package:firebase_auth/firebase_auth.dart' as firebase;
import 'package:flutter_app/domain/auth/user.dart';
import 'package:flutter_app/domain/auth/value_objects.dart';
import 'package:flutter_app/domain/core/value_objects.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class FirebaseUserMapper {
  User toDomain(firebase.User _) {
    if (_ == null) {
      return null;
    } else {
      return User(
        id: UniqueId.fromUniqueString(_.uid),
        name: StringSingleLine(_.displayName ?? _.email.split('@').first),
        emailAddress: EmailAddress(_.email),
      );
    }
  }
}
