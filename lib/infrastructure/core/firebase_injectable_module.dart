import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:injectable/injectable.dart';

@registerModule
abstract class FirebaseInjectableModule {
  @lazySingleton
  GoogleSignIn get googleSignIn => GoogleSignIn(
        clientId: FlutterConfig.get('CLIENT_ID') as String,
        scopes: <String>[
          CalendarApi.calendarScope,
        ],
      );
  @lazySingleton
  FirebaseAuth get firebaseAuth => FirebaseAuth.instance;
  @lazySingleton
  Dio get dio => Dio();
}
