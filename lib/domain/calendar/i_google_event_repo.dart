import 'package:dartz/dartz.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/domain/calendar/calendar_failure.dart';
import 'package:flutter_app/domain/core/value_objects.dart';

abstract class IGoogleEventRepo {
  Future<Either<CalendarFailure, List<Appointment>>> getGoogleEvents();
  Future<Either<CalendarFailure, Unit>> deleteGoogleEvent(
      {String calendarId, String eventId});
  Future<Either<CalendarFailure, Unit>> insertGoogleEvent(
      {StringSingleLine title, DateTime start, DateTime end, String eventId});
  Future<Either<CalendarFailure, Unit>> updateGoogleEvent(
      {StringSingleLine title, DateTime start, DateTime end, String eventId});
}
