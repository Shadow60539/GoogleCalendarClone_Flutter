import 'package:flutter/foundation.dart';
import 'package:googleapis/calendar/v3.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class CalendarProvider extends ChangeNotifier {
  CalendarApi _calendarApi;

  CalendarApi get calendarApi => _calendarApi;

  void updateCalendarApi(CalendarApi calendarApi) {
    _calendarApi = calendarApi;
    notifyListeners();
  }
}
