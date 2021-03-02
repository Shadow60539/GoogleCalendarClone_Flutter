part of 'event_form_bloc.dart';

@freezed
abstract class EventFormEvent with _$EventFormEvent {
  const factory EventFormEvent.titleChanged(String title) = _TitleChanged;
  const factory EventFormEvent.startDateChanged(DateTime day) =
      _StartDateChanged;
  const factory EventFormEvent.startTimeChanged(TimeOfDay time) =
      _StartTimeChanged;
  const factory EventFormEvent.endDateChanged(DateTime day) = _EndDateChanged;
  const factory EventFormEvent.endtTimeChanged(TimeOfDay time) =
      _EndTimeChanged;
  const factory EventFormEvent.updateEvent(
      {String title,
      DateTime start,
      DateTime end,
      String event}) = _UpdateEvent;
  const factory EventFormEvent.savePressed() = _SaveEventPressed;
  const factory EventFormEvent.updatePressed() = UpdateEventPressed;
}
