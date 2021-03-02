import 'package:flutter/material.dart';
import 'package:flutter_app/domain/core/time_zones.dart';
import 'package:googleapis/calendar/v3.dart';

class Appointment {
  final String title;
  final DateTime start;
  final DateTime end;
  final String startPeroid;
  final String endPeroid;
  final int durationInMinutes;
  final int startInMinutes;
  final _Creator creator;
  final String calendarId;
  final String eventId;

  Appointment({
    this.creator,
    this.calendarId,
    this.eventId,
    this.startPeroid,
    this.endPeroid,
    this.title,
    this.start,
    this.end,
    this.durationInMinutes,
    this.startInMinutes,
  });

  factory Appointment.fromEvent({Event event}) => Appointment(
      title: event.summary,
      start: event.start.dateTime.toLocal(),
      startPeroid:
          TimeOfDay.fromDateTime(event.start.dateTime.toLocal()).period ==
                  DayPeriod.am
              ? 'AM'
              : 'PM',
      endPeroid: TimeOfDay.fromDateTime(event.end.dateTime.toLocal()).period ==
              DayPeriod.am
          ? 'AM'
          : 'PM',
      end: event.end.dateTime.toLocal(),
      durationInMinutes: event.end.dateTime
          .toLocal()
          .difference(event.start.dateTime.toLocal())
          .inMinutes,
      startInMinutes: event.start.dateTime
          .toLocal()
          .difference(
            DateTime(
              event.start.dateTime.toLocal().year,
              event.start.dateTime.toLocal().month,
              event.start.dateTime.toLocal().day,
            ),
          )
          .inMinutes,
      creator: _Creator.fromEventCreator(eventCreator: event.creator),
      calendarId: 'primary',
      eventId: event.id);

  Event toEvent() => Event()
    ..summary = title
    ..start = EventDateTime.fromJson(
        {'dateTime': start.toLocal().toString(), 'timeZone': TIMEZONE})
    ..end = EventDateTime.fromJson(
        {'dateTime': end.toLocal().toString(), 'timeZone': TIMEZONE});
}

class _Creator {
  final String displayName;
  final String email;

  _Creator({this.displayName, this.email});

  factory _Creator.fromEventCreator({EventCreator eventCreator}) => _Creator(
        displayName: eventCreator.displayName,
        email: eventCreator.email,
      );
}
