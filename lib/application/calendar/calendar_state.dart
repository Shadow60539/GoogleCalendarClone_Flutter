part of 'calendar_bloc.dart';

@freezed
abstract class CalendarState with _$CalendarState {
  const factory CalendarState(
      {List<Appointment> appointments,
      CalendarEntry calendarEntry,
      DateTime focusedDay,
      Option<Either<CalendarFailure, Unit>> failureOrSuccess,
      Option<Unit> isLoading,
      HashMap<DateTime, List<StartDurationItem>> hashMapDay,
      HashMap<DateTime, Widget> hashMapMonth,
      DaysPageController daysPageController,
      DaysPageController threeDaysPageController,
      DaysPageController weekPageController,
      MonthPageController monthPageController}) = _CalendarState;

  factory CalendarState.initial() => CalendarState(
        appointments: [],
        isLoading: some(unit),
        hashMapDay: HashMap<DateTime,List<StartDurationItem>>(),
        hashMapMonth: HashMap<DateTime,Widget>(),
        failureOrSuccess: none(),
        calendarEntry: CalendarEntry.day,
        focusedDay: DateTime.now(),
        daysPageController: DaysPageController(
            daysPerPage: 1, firstDayOnInitialPage: DateTime.now()),
        threeDaysPageController: DaysPageController(
            daysPerPage: 3, firstDayOnInitialPage: DateTime.now()),
        weekPageController: DaysPageController(
            daysPerPage: 7,
            firstDayOnInitialPage: DateTime.now()
                .subtract(Duration(days: DateTime.now().weekday))),
        monthPageController: MonthPageController(initialMonth: DateTime.now()),
      );
}
