import 'package:auto_route/auto_route_annotations.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_day_page.dart';
import 'package:flutter_app/presentation/calendar/calendar_holder.dart';
import 'package:flutter_app/presentation/calendar/pages/update_form_page.dart';
import 'package:flutter_app/presentation/home/pages/chat_page.dart';
import 'package:flutter_app/presentation/home/pages/home_page.dart';
import 'package:flutter_app/presentation/login/auth_checker.dart';
import 'package:flutter_app/presentation/login/pages/login_page.dart';

@MaterialAutoRouter()
class $Router {
  @initial
  SplashPage splashScreen;
  HandleAuthPage handleAuthPage;
  HomePage homePage;
  ChatPage chatPage;
  UpdateFormPage updateFormPage;
  CalendarHolder calendarHomePage;
  CalendarDayPage calendarDayPage;
}
