part of 'calendar_bloc.dart';

@freezed
abstract class CalendarEvent with _$CalendarEvent {
  const factory CalendarEvent.getGoogleEvents() = _GetGoogleEvent;
  const factory CalendarEvent.deleteEvent({String calendarId, String eventId}) = _DeleteGoogleEvent;
  const factory CalendarEvent.moveToSpecificDay(DateTime day) = _SpecificDayChange;
  const factory CalendarEvent.moveToTodayForDay() = _Day;
  const factory CalendarEvent.moveToTodayForThreeDays() = _ThreeDays;
  const factory CalendarEvent.moveToTodayForWeek() = _Week;
  const factory CalendarEvent.moveToTodayForMonth() = _Month;
  const factory CalendarEvent.updateCalendarView({CalendarEntry calendarEntry}) = _CalendarView;
  const factory CalendarEvent.onDaysChanged({DateTime newDay}) = _DaysChanged;
}