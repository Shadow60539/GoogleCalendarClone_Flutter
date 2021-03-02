part of 'event_form_bloc.dart';

@freezed
abstract class EventFormState with _$EventFormState {
  const factory EventFormState({
    @required StringSingleLine title,
    String eventId,
    @required bool showErrorMessages,
    @required DateTime startDate,
    @required DateTime endDate,
    @required TimeOfDay startTime,
    @required TimeOfDay endTime,
    @required Option<Either<CalendarFailure, Unit>> calFailureOrSuccessOption,
  }) = _EventFormState;

  factory EventFormState.initial() => EventFormState(
        title: StringSingleLine(''),
        showErrorMessages: false,
        startTime: TimeOfDay.now(),
        endTime: TimeOfDay(hour: TimeOfDay.now().hour+1, minute: TimeOfDay.now().minute),
        startDate: DateTime(DateTime.now().year, DateTime.now().month,
            DateTime.now().day, TimeOfDay.now().hour, TimeOfDay.now().minute),
        endDate: DateTime.now().add(const Duration(hours: 1)),
        calFailureOrSuccessOption: none(),
      );
}
