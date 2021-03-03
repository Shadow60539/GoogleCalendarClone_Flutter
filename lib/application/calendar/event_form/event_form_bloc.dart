import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/domain/calendar/calendar_failure.dart';
import 'package:flutter_app/domain/calendar/i_google_event_repo.dart';
import 'package:flutter_app/domain/core/value_objects.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'event_form_bloc.freezed.dart';
part 'event_form_event.dart';
part 'event_form_state.dart';

@injectable
class EventFormBloc extends Bloc<EventFormEvent, EventFormState> {
  EventFormBloc(this.repo) : super();

  final IGoogleEventRepo repo;

  @override
  Stream<EventFormState> mapEventToState(
    EventFormEvent event,
  ) async* {
    yield* event.map(
      titleChanged: (e) async* {
        yield state.copyWith(
          title: StringSingleLine(e.title),
          calFailureOrSuccessOption: none(),
        );
      },
      startDateChanged: (e) async* {
        yield state.copyWith(
          startDate: DateTime(
            e.day.year,
            e.day.month,
            e.day.day,
            state.startTime.hour,
            state.startTime.minute,
          ),
          endDate: DateTime(
            e.day.year,
            e.day.month,
            e.day.day,
            state.endDate.hour,
            state.endDate.minute,
          ),
          calFailureOrSuccessOption: none(),
        );
      },
      startTimeChanged: (e) async* {
        yield state.copyWith(
          startDate: DateTime(state.startDate.year, state.startDate.month,
              state.startDate.day, e.time.hour, e.time.minute),
          startTime: e.time,
          endTime: TimeOfDay(hour: e.time.hour + 1, minute: e.time.minute),
          calFailureOrSuccessOption: none(),
        );
      },
      endDateChanged: (e) async* {
        yield state.copyWith(
          endDate: DateTime(
            e.day.year,
            e.day.month,
            e.day.day,
            state.endTime.hour,
            state.endTime.minute,
          ),
          calFailureOrSuccessOption: none(),
        );
      },
      endtTimeChanged: (e) async* {
        yield state.copyWith(
          endDate: DateTime(state.endDate.year, state.endDate.month,
              state.endDate.day, e.time.hour, e.time.minute),
          endTime: e.time,
          calFailureOrSuccessOption: none(),
        );
      },
      savePressed: (e) async* {
        yield* _onPressed(forwardCall: repo.insertGoogleEvent);
      },
      updatePressed: (e) async* {
        yield* _onPressed(forwardCall: repo.updateGoogleEvent);
      },
      updateEvent: (e) async* {
        yield state.copyWith(
          title: StringSingleLine(e.title),
          startDate: e.start,
          endDate: e.end,
          eventId: e.event,
        );
      },
    );
  }

  Stream<EventFormState> _onPressed(
      {Future<Either<CalendarFailure, Unit>> Function({
        @required StringSingleLine title,
        @required DateTime start,
        @required DateTime end,
        String eventId,
      })
          forwardCall}) async* {
    Either<CalendarFailure, Unit> failureOrSuccess;

    if (state.title.isValid()) {
      failureOrSuccess = await forwardCall();

      yield state.copyWith(
        showErrorMessages: true,
        calFailureOrSuccessOption: optionOf(failureOrSuccess),
      );
    }
    yield state.copyWith(
      showErrorMessages: true,
      calFailureOrSuccessOption: optionOf(failureOrSuccess),
    );
  }

  @override
  EventFormState get initialState => EventFormState.initial();
}
