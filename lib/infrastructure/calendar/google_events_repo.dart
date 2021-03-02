import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:flutter_app/application/providers/calendar_provider.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/domain/calendar/calendar_failure.dart';
import 'package:flutter_app/domain/calendar/i_google_event_repo.dart';
import 'package:flutter_app/domain/core/time_zones.dart';
import 'package:flutter_app/domain/core/value_objects.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:googleapis/calendar/v3.dart' as googleAPI;
import 'package:http/http.dart';
import 'package:http/io_client.dart';
import 'package:injectable/injectable.dart';

@prod
@lazySingleton
@RegisterAs(IGoogleEventRepo)
class GoogleEventsRepo extends IGoogleEventRepo {
  final GoogleSignIn _googleSignIn;
  final CalendarProvider _calendarProvider;

  GoogleEventsRepo(this._googleSignIn, this._calendarProvider);
  @override
  Future<Either<CalendarFailure, List<Appointment>>> getGoogleEvents() async {
    try {
      final GoogleSignInAccount googleUser = await _googleSignIn.signIn();
      final GoogleAPIClient httpClient =
          GoogleAPIClient(await googleUser.authHeaders);
      final googleAPI.CalendarApi calendarAPI =
          googleAPI.CalendarApi(httpClient);
      final googleAPI.Events calEvents = await calendarAPI.events.list(
        "primary",
      );

      final List<googleAPI.Event> appointments = <googleAPI.Event>[];
      if (calEvents != null && calEvents.items != null) {
        for (int i = 0; i < calEvents.items.length; i++) {
          final googleAPI.Event event = calEvents.items[i];
          if (event == null ||
              event.start.dateTime == null ||
              event.end.dateTime == null) {
            continue;
          }

          appointments.add(event);
        }
      }

      _calendarProvider.updateCalendarApi(calendarAPI);

      return right(
          appointments.map((e) => Appointment.fromEvent(event: e)).toList());
    } catch (e) {
      if (e is googleAPI.DetailedApiRequestError && e.status == 401) {
        return left(const CalendarFailure.invalidCredentialsError());
      } else if (e is googleAPI.DetailedApiRequestError && e.status == 400) {
        return left(const CalendarFailure.startAndEndDateError());
      } else {
        return left(const CalendarFailure.serverError());
      }
    }
  }

  @override
  Future<Either<CalendarFailure, Unit>> deleteGoogleEvent(
      {String calendarId, String eventId}) async {
    try {
      final googleAPI.CalendarApi api = _calendarProvider.calendarApi;

      await api.events.delete(calendarId, eventId);

      return right(unit);
    } catch (e) {
      if (e is googleAPI.DetailedApiRequestError && e.status == 401) {
        return left(const CalendarFailure.invalidCredentialsError());
      } else if (e is googleAPI.DetailedApiRequestError && e.status == 400) {
        return left(const CalendarFailure.startAndEndDateError());
      } else {
        return left(const CalendarFailure.serverError());
      }
    }
  }

  @override
  Future<Either<CalendarFailure, Unit>> insertGoogleEvent(
      {StringSingleLine title, DateTime start, DateTime end}) async {
    try {
      final String summary = title.value.getOrElse(() => 'INVALID TITLE');
      final googleAPI.CalendarApi api = _calendarProvider.calendarApi;

      await api.events.insert(
          googleAPI.Event.fromJson({
            'summary': summary,
            'start': googleAPI.EventDateTime.fromJson({
              'dateTime': start.toLocal().toString(),
              'timeZone': TIMEZONE
            }).toJson(),
            'end': googleAPI.EventDateTime.fromJson({
              'dateTime': end.toLocal().toString(),
              'timeZone': TIMEZONE
            }).toJson()
          }),
          'primary');

      log("Event added");

      return right(unit);
    } catch (e) {
      if (e is googleAPI.DetailedApiRequestError && e.status == 401) {
        return left(const CalendarFailure.invalidCredentialsError());
      } else if (e is googleAPI.DetailedApiRequestError && e.status == 400) {
        return left(const CalendarFailure.startAndEndDateError());
      } else {
        return left(const CalendarFailure.serverError());
      }
    }
  }

  @override
  Future<Either<CalendarFailure, Unit>> updateGoogleEvent(
      {StringSingleLine title,
      DateTime start,
      DateTime end,
      String eventId}) async {
    try {
      final String summary = title.value.getOrElse(() => 'INVALID TITLE');
      final googleAPI.CalendarApi api = _calendarProvider.calendarApi;

      await api.events.update(
          googleAPI.Event.fromJson({
            'summary': summary,
            'start': googleAPI.EventDateTime.fromJson({
              'dateTime': start.toLocal().toString(),
              'timeZone': TIMEZONE
            }).toJson(),
            'end': googleAPI.EventDateTime.fromJson({
              'dateTime': end.toLocal().toString(),
              'timeZone': TIMEZONE
            }).toJson()
          }),
          'primary',
          eventId);

      log("Event updated");

      return right(unit);
    } catch (e) {
      if (e is googleAPI.DetailedApiRequestError && e.status == 401) {
        return left(const CalendarFailure.invalidCredentialsError());
      } else if (e is googleAPI.DetailedApiRequestError && e.status == 400) {
        return left(const CalendarFailure.startAndEndDateError());
      } else {
        return left(const CalendarFailure.serverError());
      }
    }
  }
}

class GoogleAPIClient extends IOClient {
  Map<String, String> _headers;

  GoogleAPIClient(this._headers) : super();

  @override
  Future<IOStreamedResponse> send(BaseRequest request) =>
      super.send(request..headers.addAll(_headers));

  @override
  Future<Response> head(Object url, {Map<String, String> headers}) =>
      super.head(url, headers: headers..addAll(_headers));
}
