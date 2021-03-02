import 'dart:async';
import 'dart:collection';

import 'package:bloc/bloc.dart';
import 'package:calendar_views/calendar_views.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/providers/calendar_provider.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/domain/calendar/calendar_failure.dart';
import 'package:flutter_app/domain/calendar/i_google_event_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'calendar_bloc.freezed.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

@injectable
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  final IGoogleEventRepo iGoogleEventRepo;
  final CalendarProvider calendarProvider;
  CalendarBloc(this.iGoogleEventRepo, this.calendarProvider);

  @override
  CalendarState get initialState => CalendarState.initial();

  @override
  Stream<CalendarState> mapEventToState(
    CalendarEvent event,
  ) async* {
    yield* event.map(
      getGoogleEvents: _getGoogleEvents,
      deleteEvent: (_state) async* {
        yield state.copyWith(isLoading: some(unit));

        final Either<CalendarFailure, Unit> deleteEventOrFailure =
            await iGoogleEventRepo.deleteGoogleEvent(
                calendarId: _state.calendarId, eventId: _state.eventId);

        yield* deleteEventOrFailure.fold(
          (l) async* {
            yield state.copyWith(
                failureOrSuccess: some(left(l)), isLoading: none());
          },
          (r) {
            state.hashMapDay.clear();
            state.hashMapMonth.clear();

            return _getGoogleEvents(r);
          },
        );
      },
      updateCalendarView: (calendarEntryState) async* {
        yield state.copyWith(calendarEntry: calendarEntryState.calendarEntry);
      },
      onDaysChanged: (_DaysChanged _daysChangedState) async* {
        yield state.copyWith(focusedDay: _daysChangedState.newDay);
      },
      moveToSpecificDay: (e) async* {
        switch (state.calendarEntry) {
          case CalendarEntry.day:
            state.daysPageController.animateToDay(e.day,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);

            break;
          case CalendarEntry.threeDays:
            state.threeDaysPageController.animateToDay(e.day,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);

            break;
          case CalendarEntry.week:
            state.weekPageController.animateToDay(e.day,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);

            break;
          case CalendarEntry.month:
            state.monthPageController.animateToMonth(e.day,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);

            break;
          default:
            state.daysPageController.animateToDay(e.day,
                duration: const Duration(milliseconds: 400),
                curve: Curves.ease);
        }

        yield state.copyWith(
          focusedDay: e.day,
        );
      },
      moveToTodayForDay: (_) async* {
        state.daysPageController.animateToDay(DateTime.now(),
            duration: const Duration(milliseconds: 400), curve: Curves.ease);
        yield state.copyWith(
          focusedDay: DateTime.now(),
        );
      },
      moveToTodayForThreeDays: (_) async* {
        state.threeDaysPageController.animateToDay(DateTime.now(),
            duration: const Duration(milliseconds: 400), curve: Curves.ease);
        yield state.copyWith(
          focusedDay: DateTime.now(),
        );
      },
      moveToTodayForWeek: (_) async* {
        state.weekPageController.animateToDay(DateTime.now(),
            duration: const Duration(milliseconds: 400), curve: Curves.ease);
        yield state.copyWith(
          focusedDay: DateTime.now(),
        );
      },
      moveToTodayForMonth: (_) async* {
        state.monthPageController.animateToMonth(DateTime.now(),
            duration: const Duration(milliseconds: 400), curve: Curves.ease);
        yield state.copyWith(
          focusedDay: DateTime.now(),
        );
      },
    );
  }

  Stream<CalendarState> _getGoogleEvents(_) async* {
    yield state.copyWith(isLoading: some(unit));
    final Either<CalendarFailure, List<Appointment>> _appointmentsOrException =
        await iGoogleEventRepo.getGoogleEvents();
    yield _appointmentsOrException
        .fold((l) => state.copyWith(failureOrSuccess: some(left(l))), (r) {
      state.hashMapDay.clear();
      state.hashMapMonth.clear();
      return state.copyWith(appointments: r, isLoading: none());
    });
  }
}
