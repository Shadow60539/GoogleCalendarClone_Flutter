import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/application/providers/auth_provider.dart';
import 'package:flutter_app/application/providers/calendar_provider.dart';
import 'package:flutter_app/core/routes/route.gr.dart' as route;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

import '../injection.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        BlocProvider(
          create: (_) =>
              getIt<AuthBloc>()..add(const AuthEvent.authCheckRequested()),
        ),
        BlocProvider(
          create: (_) =>
              getIt<CalendarBloc>()..add(const CalendarEvent.getGoogleEvents()),
        ),
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => getIt<CalendarProvider>(),
        ),
      ],
      child: MaterialApp(
        title: 'LearnWithYoutube',
        theme: ThemeData(
                primaryColor: Colors.white,
                textTheme: GoogleFonts.poppinsTextTheme())
            .copyWith(
                pageTransitionsTheme: const PageTransitionsTheme(
          builders: <TargetPlatform, PageTransitionsBuilder>{
            TargetPlatform.android: ZoomPageTransitionsBuilder(),
          },
        )),
        debugShowCheckedModeBanner: false,
        onGenerateRoute: route.Router.onGenerateRoute,
        initialRoute: route.Router.splashScreen,
        navigatorKey: route.Router.navigator.key,
      ),
    );
  }
}
