import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart' hide User;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/services.dart';
import 'package:flutter_app/domain/auth/auth_failure.dart';
import 'package:flutter_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_app/domain/auth/user.dart';
import 'package:flutter_app/domain/auth/value_objects.dart';
import 'package:flutter_app/infrastructure/auth/firebase_user_mapper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

@prod
@lazySingleton
@RegisterAs(IAuthFacade)
class FirebaseAuthFacade implements IAuthFacade {
  final FirebaseAuth _firebaseAuth;
  final GoogleSignIn _googleSignIn;
  final FirebaseUserMapper _firebaseUserMapper;

  FirebaseAuthFacade(
    this._firebaseAuth,
    this._googleSignIn,
    this._firebaseUserMapper,
  );

  @override
  Future<Option<User>> getSignedInUser() async {
    return optionOf(
        _firebaseUserMapper.toDomain(await _firebaseAuth.currentUser()));
  }

  @override
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .createUserWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      )
          .then((userCredentails) async {
        return right(unit);
      });
    } on FirebaseException catch (e) {
      if (e.code == 'email-already-in-use') {
        return left(const AuthFailure.emailAlreadyInUse());
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    @required EmailAddress emailAddress,
    @required Password password,
  }) async {
    final emailAddressStr = emailAddress.value.getOrElse(() => 'INVALID EMAIL');
    final passwordStr = password.value.getOrElse(() => 'INVALID PASSWORD');
    try {
      return await _firebaseAuth
          .signInWithEmailAndPassword(
        email: emailAddressStr,
        password: passwordStr,
      )
          .then((userCredentails) async {
        return right(unit);
      });
    } on FirebaseException catch (e) {
      if (e.code == 'wrong-password' || e.code == 'user-not-found') {
        return left(const AuthFailure.invalidEmailAndPasswordCombination());
      }
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithGoogle() async {
    try {
      final googleUser = await _googleSignIn.signIn();

      if (googleUser == null) {
        return left(const AuthFailure.cancelledByUser());
      }

      final googleAuthentication = await googleUser.authentication;

      return _firebaseAuth
          .signInWithGoogle(
              idToken: googleAuthentication.idToken,
              accessToken: googleAuthentication.accessToken)
          .then((value) {
        return right(unit);
      });
    } on PlatformException catch (_) {
      return left(const AuthFailure.serverError());
    }
  }

  @override
  Future<void> signOut() async {
    return Future.wait([_googleSignIn.signOut(), _firebaseAuth.signOut()]);
  }
}
