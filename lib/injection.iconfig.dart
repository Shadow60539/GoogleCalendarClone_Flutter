// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:flutter_app/application/providers/calendar_provider.dart';
import 'package:flutter_app/infrastructure/auth/firebase_user_mapper.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app/infrastructure/core/firebase_injectable_module.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:dio/dio.dart';
import 'package:flutter_app/infrastructure/auth/firebase_auth_facade.dart';
import 'package:flutter_app/domain/auth/i_auth_facade.dart';
import 'package:flutter_app/infrastructure/calendar/google_events_repo.dart';
import 'package:flutter_app/domain/calendar/i_google_event_repo.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/application/calendar/event_form/event_form_bloc.dart';
import 'package:get_it/get_it.dart';

void $initGetIt(GetIt g, {String environment}) {
  final firebaseInjectableModule = _$FirebaseInjectableModule();
  g.registerLazySingleton<CalendarProvider>(() => CalendarProvider());
  g.registerLazySingleton<FirebaseUserMapper>(() => FirebaseUserMapper());
  g.registerLazySingleton<GoogleSignIn>(
      () => firebaseInjectableModule.googleSignIn);
  g.registerLazySingleton<FirebaseAuth>(
      () => firebaseInjectableModule.firebaseAuth);
  g.registerLazySingleton<Dio>(() => firebaseInjectableModule.dio);
  g.registerFactory<AuthBloc>(() => AuthBloc(
        g<IAuthFacade>(),
      ));
  g.registerFactory<SignInFormBloc>(() => SignInFormBloc(
        g<IAuthFacade>(),
      ));
  g.registerFactory<CalendarBloc>(() => CalendarBloc(
        g<IGoogleEventRepo>(),
        g<CalendarProvider>(),
      ));
  g.registerFactory<EventFormBloc>(() => EventFormBloc(
        g<IGoogleEventRepo>(),
      ));

  //Register prod Dependencies --------
  if (environment == 'prod') {
    g.registerLazySingleton<IAuthFacade>(() => FirebaseAuthFacade(
          g<FirebaseAuth>(),
          g<GoogleSignIn>(),
          g<FirebaseUserMapper>(),
        ));
    g.registerLazySingleton<IGoogleEventRepo>(() => GoogleEventsRepo(
          g<GoogleSignIn>(),
          g<CalendarProvider>(),
        ));
  }
}

class _$FirebaseInjectableModule extends FirebaseInjectableModule {}
