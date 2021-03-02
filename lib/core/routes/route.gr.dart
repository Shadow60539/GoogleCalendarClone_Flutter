// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_app/presentation/login/auth_checker.dart';
import 'package:flutter_app/presentation/login/pages/login_page.dart';
import 'package:flutter_app/presentation/home/pages/home_page.dart';
import 'package:flutter_app/presentation/home/pages/chat_page.dart';
import 'package:flutter_app/presentation/calendar/pages/update_form_page.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/presentation/calendar/calendar_holder.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_day_page.dart';

class Router {
  static const splashScreen = '/';
  static const handleAuthPage = '/handle-auth-page';
  static const homePage = '/home-page';
  static const chatPage = '/chat-page';
  static const updateFormPage = '/update-form-page';
  static const calendarHomePage = '/calendar-home-page';
  static const calendarDayPage = '/calendar-day-page';
  static final navigator = ExtendedNavigator();
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Router.splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => SplashPage(),
          settings: settings,
        );
      case Router.handleAuthPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HandleAuthPage(),
          settings: settings,
        );
      case Router.homePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => HomePage(),
          settings: settings,
        );
      case Router.chatPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => ChatPage(),
          settings: settings,
        );
      case Router.updateFormPage:
        if (hasInvalidArgs<UpdateFormPageArguments>(args)) {
          return misTypedArgsRoute<UpdateFormPageArguments>(args);
        }
        final typedArgs =
            args as UpdateFormPageArguments ?? UpdateFormPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (_) =>
              UpdateFormPage(key: typedArgs.key, event: typedArgs.event),
          settings: settings,
        );
      case Router.calendarHomePage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => CalendarHolder(),
          settings: settings,
        );
      case Router.calendarDayPage:
        return MaterialPageRoute<dynamic>(
          builder: (_) => CalendarDayPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

//**************************************************************************
// Arguments holder classes
//***************************************************************************

//UpdateFormPage arguments holder class
class UpdateFormPageArguments {
  final Key key;
  final Appointment event;
  UpdateFormPageArguments({this.key, this.event});
}
