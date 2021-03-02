// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'calendar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$CalendarEventTearOff {
  const _$CalendarEventTearOff();

// ignore: unused_element
  _GetGoogleEvent getGoogleEvents() {
    return const _GetGoogleEvent();
  }

// ignore: unused_element
  _DeleteGoogleEvent deleteEvent({String calendarId, String eventId}) {
    return _DeleteGoogleEvent(
      calendarId: calendarId,
      eventId: eventId,
    );
  }

// ignore: unused_element
  _SpecificDayChange moveToSpecificDay(DateTime day) {
    return _SpecificDayChange(
      day,
    );
  }

// ignore: unused_element
  _Day moveToTodayForDay() {
    return const _Day();
  }

// ignore: unused_element
  _ThreeDays moveToTodayForThreeDays() {
    return const _ThreeDays();
  }

// ignore: unused_element
  _Week moveToTodayForWeek() {
    return const _Week();
  }

// ignore: unused_element
  _Month moveToTodayForMonth() {
    return const _Month();
  }

// ignore: unused_element
  _CalendarView updateCalendarView({CalendarEntry calendarEntry}) {
    return _CalendarView(
      calendarEntry: calendarEntry,
    );
  }

// ignore: unused_element
  _DaysChanged onDaysChanged({DateTime newDay}) {
    return _DaysChanged(
      newDay: newDay,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalendarEvent = _$CalendarEventTearOff();

/// @nodoc
mixin _$CalendarEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $CalendarEventCopyWith<$Res> {
  factory $CalendarEventCopyWith(
          CalendarEvent value, $Res Function(CalendarEvent) then) =
      _$CalendarEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CalendarEventCopyWithImpl<$Res>
    implements $CalendarEventCopyWith<$Res> {
  _$CalendarEventCopyWithImpl(this._value, this._then);

  final CalendarEvent _value;
  // ignore: unused_field
  final $Res Function(CalendarEvent) _then;
}

/// @nodoc
abstract class _$GetGoogleEventCopyWith<$Res> {
  factory _$GetGoogleEventCopyWith(
          _GetGoogleEvent value, $Res Function(_GetGoogleEvent) then) =
      __$GetGoogleEventCopyWithImpl<$Res>;
}

/// @nodoc
class __$GetGoogleEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements _$GetGoogleEventCopyWith<$Res> {
  __$GetGoogleEventCopyWithImpl(
      _GetGoogleEvent _value, $Res Function(_GetGoogleEvent) _then)
      : super(_value, (v) => _then(v as _GetGoogleEvent));

  @override
  _GetGoogleEvent get _value => super._value as _GetGoogleEvent;
}

/// @nodoc
class _$_GetGoogleEvent implements _GetGoogleEvent {
  const _$_GetGoogleEvent();

  @override
  String toString() {
    return 'CalendarEvent.getGoogleEvents()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _GetGoogleEvent);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return getGoogleEvents();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getGoogleEvents != null) {
      return getGoogleEvents();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return getGoogleEvents(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (getGoogleEvents != null) {
      return getGoogleEvents(this);
    }
    return orElse();
  }
}

abstract class _GetGoogleEvent implements CalendarEvent {
  const factory _GetGoogleEvent() = _$_GetGoogleEvent;
}

/// @nodoc
abstract class _$DeleteGoogleEventCopyWith<$Res> {
  factory _$DeleteGoogleEventCopyWith(
          _DeleteGoogleEvent value, $Res Function(_DeleteGoogleEvent) then) =
      __$DeleteGoogleEventCopyWithImpl<$Res>;
  $Res call({String calendarId, String eventId});
}

/// @nodoc
class __$DeleteGoogleEventCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements _$DeleteGoogleEventCopyWith<$Res> {
  __$DeleteGoogleEventCopyWithImpl(
      _DeleteGoogleEvent _value, $Res Function(_DeleteGoogleEvent) _then)
      : super(_value, (v) => _then(v as _DeleteGoogleEvent));

  @override
  _DeleteGoogleEvent get _value => super._value as _DeleteGoogleEvent;

  @override
  $Res call({
    Object calendarId = freezed,
    Object eventId = freezed,
  }) {
    return _then(_DeleteGoogleEvent(
      calendarId:
          calendarId == freezed ? _value.calendarId : calendarId as String,
      eventId: eventId == freezed ? _value.eventId : eventId as String,
    ));
  }
}

/// @nodoc
class _$_DeleteGoogleEvent implements _DeleteGoogleEvent {
  const _$_DeleteGoogleEvent({this.calendarId, this.eventId});

  @override
  final String calendarId;
  @override
  final String eventId;

  @override
  String toString() {
    return 'CalendarEvent.deleteEvent(calendarId: $calendarId, eventId: $eventId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DeleteGoogleEvent &&
            (identical(other.calendarId, calendarId) ||
                const DeepCollectionEquality()
                    .equals(other.calendarId, calendarId)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality().equals(other.eventId, eventId)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(calendarId) ^
      const DeepCollectionEquality().hash(eventId);

  @override
  _$DeleteGoogleEventCopyWith<_DeleteGoogleEvent> get copyWith =>
      __$DeleteGoogleEventCopyWithImpl<_DeleteGoogleEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return deleteEvent(calendarId, eventId);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteEvent != null) {
      return deleteEvent(calendarId, eventId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return deleteEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (deleteEvent != null) {
      return deleteEvent(this);
    }
    return orElse();
  }
}

abstract class _DeleteGoogleEvent implements CalendarEvent {
  const factory _DeleteGoogleEvent({String calendarId, String eventId}) =
      _$_DeleteGoogleEvent;

  String get calendarId;
  String get eventId;
  _$DeleteGoogleEventCopyWith<_DeleteGoogleEvent> get copyWith;
}

/// @nodoc
abstract class _$SpecificDayChangeCopyWith<$Res> {
  factory _$SpecificDayChangeCopyWith(
          _SpecificDayChange value, $Res Function(_SpecificDayChange) then) =
      __$SpecificDayChangeCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class __$SpecificDayChangeCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements _$SpecificDayChangeCopyWith<$Res> {
  __$SpecificDayChangeCopyWithImpl(
      _SpecificDayChange _value, $Res Function(_SpecificDayChange) _then)
      : super(_value, (v) => _then(v as _SpecificDayChange));

  @override
  _SpecificDayChange get _value => super._value as _SpecificDayChange;

  @override
  $Res call({
    Object day = freezed,
  }) {
    return _then(_SpecificDayChange(
      day == freezed ? _value.day : day as DateTime,
    ));
  }
}

/// @nodoc
class _$_SpecificDayChange implements _SpecificDayChange {
  const _$_SpecificDayChange(this.day) : assert(day != null);

  @override
  final DateTime day;

  @override
  String toString() {
    return 'CalendarEvent.moveToSpecificDay(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SpecificDayChange &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(day);

  @override
  _$SpecificDayChangeCopyWith<_SpecificDayChange> get copyWith =>
      __$SpecificDayChangeCopyWithImpl<_SpecificDayChange>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToSpecificDay(day);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToSpecificDay != null) {
      return moveToSpecificDay(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToSpecificDay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToSpecificDay != null) {
      return moveToSpecificDay(this);
    }
    return orElse();
  }
}

abstract class _SpecificDayChange implements CalendarEvent {
  const factory _SpecificDayChange(DateTime day) = _$_SpecificDayChange;

  DateTime get day;
  _$SpecificDayChangeCopyWith<_SpecificDayChange> get copyWith;
}

/// @nodoc
abstract class _$DayCopyWith<$Res> {
  factory _$DayCopyWith(_Day value, $Res Function(_Day) then) =
      __$DayCopyWithImpl<$Res>;
}

/// @nodoc
class __$DayCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$DayCopyWith<$Res> {
  __$DayCopyWithImpl(_Day _value, $Res Function(_Day) _then)
      : super(_value, (v) => _then(v as _Day));

  @override
  _Day get _value => super._value as _Day;
}

/// @nodoc
class _$_Day implements _Day {
  const _$_Day();

  @override
  String toString() {
    return 'CalendarEvent.moveToTodayForDay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Day);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForDay();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForDay != null) {
      return moveToTodayForDay();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForDay(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForDay != null) {
      return moveToTodayForDay(this);
    }
    return orElse();
  }
}

abstract class _Day implements CalendarEvent {
  const factory _Day() = _$_Day;
}

/// @nodoc
abstract class _$ThreeDaysCopyWith<$Res> {
  factory _$ThreeDaysCopyWith(
          _ThreeDays value, $Res Function(_ThreeDays) then) =
      __$ThreeDaysCopyWithImpl<$Res>;
}

/// @nodoc
class __$ThreeDaysCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$ThreeDaysCopyWith<$Res> {
  __$ThreeDaysCopyWithImpl(_ThreeDays _value, $Res Function(_ThreeDays) _then)
      : super(_value, (v) => _then(v as _ThreeDays));

  @override
  _ThreeDays get _value => super._value as _ThreeDays;
}

/// @nodoc
class _$_ThreeDays implements _ThreeDays {
  const _$_ThreeDays();

  @override
  String toString() {
    return 'CalendarEvent.moveToTodayForThreeDays()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ThreeDays);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForThreeDays();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForThreeDays != null) {
      return moveToTodayForThreeDays();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForThreeDays(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForThreeDays != null) {
      return moveToTodayForThreeDays(this);
    }
    return orElse();
  }
}

abstract class _ThreeDays implements CalendarEvent {
  const factory _ThreeDays() = _$_ThreeDays;
}

/// @nodoc
abstract class _$WeekCopyWith<$Res> {
  factory _$WeekCopyWith(_Week value, $Res Function(_Week) then) =
      __$WeekCopyWithImpl<$Res>;
}

/// @nodoc
class __$WeekCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$WeekCopyWith<$Res> {
  __$WeekCopyWithImpl(_Week _value, $Res Function(_Week) _then)
      : super(_value, (v) => _then(v as _Week));

  @override
  _Week get _value => super._value as _Week;
}

/// @nodoc
class _$_Week implements _Week {
  const _$_Week();

  @override
  String toString() {
    return 'CalendarEvent.moveToTodayForWeek()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Week);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForWeek();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForWeek != null) {
      return moveToTodayForWeek();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForWeek(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForWeek != null) {
      return moveToTodayForWeek(this);
    }
    return orElse();
  }
}

abstract class _Week implements CalendarEvent {
  const factory _Week() = _$_Week;
}

/// @nodoc
abstract class _$MonthCopyWith<$Res> {
  factory _$MonthCopyWith(_Month value, $Res Function(_Month) then) =
      __$MonthCopyWithImpl<$Res>;
}

/// @nodoc
class __$MonthCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$MonthCopyWith<$Res> {
  __$MonthCopyWithImpl(_Month _value, $Res Function(_Month) _then)
      : super(_value, (v) => _then(v as _Month));

  @override
  _Month get _value => super._value as _Month;
}

/// @nodoc
class _$_Month implements _Month {
  const _$_Month();

  @override
  String toString() {
    return 'CalendarEvent.moveToTodayForMonth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _Month);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForMonth();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForMonth != null) {
      return moveToTodayForMonth();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return moveToTodayForMonth(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (moveToTodayForMonth != null) {
      return moveToTodayForMonth(this);
    }
    return orElse();
  }
}

abstract class _Month implements CalendarEvent {
  const factory _Month() = _$_Month;
}

/// @nodoc
abstract class _$CalendarViewCopyWith<$Res> {
  factory _$CalendarViewCopyWith(
          _CalendarView value, $Res Function(_CalendarView) then) =
      __$CalendarViewCopyWithImpl<$Res>;
  $Res call({CalendarEntry calendarEntry});
}

/// @nodoc
class __$CalendarViewCopyWithImpl<$Res>
    extends _$CalendarEventCopyWithImpl<$Res>
    implements _$CalendarViewCopyWith<$Res> {
  __$CalendarViewCopyWithImpl(
      _CalendarView _value, $Res Function(_CalendarView) _then)
      : super(_value, (v) => _then(v as _CalendarView));

  @override
  _CalendarView get _value => super._value as _CalendarView;

  @override
  $Res call({
    Object calendarEntry = freezed,
  }) {
    return _then(_CalendarView(
      calendarEntry: calendarEntry == freezed
          ? _value.calendarEntry
          : calendarEntry as CalendarEntry,
    ));
  }
}

/// @nodoc
class _$_CalendarView implements _CalendarView {
  const _$_CalendarView({this.calendarEntry});

  @override
  final CalendarEntry calendarEntry;

  @override
  String toString() {
    return 'CalendarEvent.updateCalendarView(calendarEntry: $calendarEntry)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalendarView &&
            (identical(other.calendarEntry, calendarEntry) ||
                const DeepCollectionEquality()
                    .equals(other.calendarEntry, calendarEntry)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(calendarEntry);

  @override
  _$CalendarViewCopyWith<_CalendarView> get copyWith =>
      __$CalendarViewCopyWithImpl<_CalendarView>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return updateCalendarView(calendarEntry);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCalendarView != null) {
      return updateCalendarView(calendarEntry);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return updateCalendarView(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateCalendarView != null) {
      return updateCalendarView(this);
    }
    return orElse();
  }
}

abstract class _CalendarView implements CalendarEvent {
  const factory _CalendarView({CalendarEntry calendarEntry}) = _$_CalendarView;

  CalendarEntry get calendarEntry;
  _$CalendarViewCopyWith<_CalendarView> get copyWith;
}

/// @nodoc
abstract class _$DaysChangedCopyWith<$Res> {
  factory _$DaysChangedCopyWith(
          _DaysChanged value, $Res Function(_DaysChanged) then) =
      __$DaysChangedCopyWithImpl<$Res>;
  $Res call({DateTime newDay});
}

/// @nodoc
class __$DaysChangedCopyWithImpl<$Res> extends _$CalendarEventCopyWithImpl<$Res>
    implements _$DaysChangedCopyWith<$Res> {
  __$DaysChangedCopyWithImpl(
      _DaysChanged _value, $Res Function(_DaysChanged) _then)
      : super(_value, (v) => _then(v as _DaysChanged));

  @override
  _DaysChanged get _value => super._value as _DaysChanged;

  @override
  $Res call({
    Object newDay = freezed,
  }) {
    return _then(_DaysChanged(
      newDay: newDay == freezed ? _value.newDay : newDay as DateTime,
    ));
  }
}

/// @nodoc
class _$_DaysChanged implements _DaysChanged {
  const _$_DaysChanged({this.newDay});

  @override
  final DateTime newDay;

  @override
  String toString() {
    return 'CalendarEvent.onDaysChanged(newDay: $newDay)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _DaysChanged &&
            (identical(other.newDay, newDay) ||
                const DeepCollectionEquality().equals(other.newDay, newDay)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(newDay);

  @override
  _$DaysChangedCopyWith<_DaysChanged> get copyWith =>
      __$DaysChangedCopyWithImpl<_DaysChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result getGoogleEvents(),
    @required Result deleteEvent(String calendarId, String eventId),
    @required Result moveToSpecificDay(DateTime day),
    @required Result moveToTodayForDay(),
    @required Result moveToTodayForThreeDays(),
    @required Result moveToTodayForWeek(),
    @required Result moveToTodayForMonth(),
    @required Result updateCalendarView(CalendarEntry calendarEntry),
    @required Result onDaysChanged(DateTime newDay),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return onDaysChanged(newDay);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result getGoogleEvents(),
    Result deleteEvent(String calendarId, String eventId),
    Result moveToSpecificDay(DateTime day),
    Result moveToTodayForDay(),
    Result moveToTodayForThreeDays(),
    Result moveToTodayForWeek(),
    Result moveToTodayForMonth(),
    Result updateCalendarView(CalendarEntry calendarEntry),
    Result onDaysChanged(DateTime newDay),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onDaysChanged != null) {
      return onDaysChanged(newDay);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result getGoogleEvents(_GetGoogleEvent value),
    @required Result deleteEvent(_DeleteGoogleEvent value),
    @required Result moveToSpecificDay(_SpecificDayChange value),
    @required Result moveToTodayForDay(_Day value),
    @required Result moveToTodayForThreeDays(_ThreeDays value),
    @required Result moveToTodayForWeek(_Week value),
    @required Result moveToTodayForMonth(_Month value),
    @required Result updateCalendarView(_CalendarView value),
    @required Result onDaysChanged(_DaysChanged value),
  }) {
    assert(getGoogleEvents != null);
    assert(deleteEvent != null);
    assert(moveToSpecificDay != null);
    assert(moveToTodayForDay != null);
    assert(moveToTodayForThreeDays != null);
    assert(moveToTodayForWeek != null);
    assert(moveToTodayForMonth != null);
    assert(updateCalendarView != null);
    assert(onDaysChanged != null);
    return onDaysChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result getGoogleEvents(_GetGoogleEvent value),
    Result deleteEvent(_DeleteGoogleEvent value),
    Result moveToSpecificDay(_SpecificDayChange value),
    Result moveToTodayForDay(_Day value),
    Result moveToTodayForThreeDays(_ThreeDays value),
    Result moveToTodayForWeek(_Week value),
    Result moveToTodayForMonth(_Month value),
    Result updateCalendarView(_CalendarView value),
    Result onDaysChanged(_DaysChanged value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (onDaysChanged != null) {
      return onDaysChanged(this);
    }
    return orElse();
  }
}

abstract class _DaysChanged implements CalendarEvent {
  const factory _DaysChanged({DateTime newDay}) = _$_DaysChanged;

  DateTime get newDay;
  _$DaysChangedCopyWith<_DaysChanged> get copyWith;
}

/// @nodoc
class _$CalendarStateTearOff {
  const _$CalendarStateTearOff();

// ignore: unused_element
  _CalendarState call(
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
      MonthPageController monthPageController}) {
    return _CalendarState(
      appointments: appointments,
      calendarEntry: calendarEntry,
      focusedDay: focusedDay,
      failureOrSuccess: failureOrSuccess,
      isLoading: isLoading,
      hashMapDay: hashMapDay,
      hashMapMonth: hashMapMonth,
      daysPageController: daysPageController,
      threeDaysPageController: threeDaysPageController,
      weekPageController: weekPageController,
      monthPageController: monthPageController,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $CalendarState = _$CalendarStateTearOff();

/// @nodoc
mixin _$CalendarState {
  List<Appointment> get appointments;
  CalendarEntry get calendarEntry;
  DateTime get focusedDay;
  Option<Either<CalendarFailure, Unit>> get failureOrSuccess;
  Option<Unit> get isLoading;
  HashMap<DateTime, List<StartDurationItem>> get hashMapDay;
  HashMap<DateTime, Widget> get hashMapMonth;
  DaysPageController get daysPageController;
  DaysPageController get threeDaysPageController;
  DaysPageController get weekPageController;
  MonthPageController get monthPageController;

  $CalendarStateCopyWith<CalendarState> get copyWith;
}

/// @nodoc
abstract class $CalendarStateCopyWith<$Res> {
  factory $CalendarStateCopyWith(
          CalendarState value, $Res Function(CalendarState) then) =
      _$CalendarStateCopyWithImpl<$Res>;
  $Res call(
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
      MonthPageController monthPageController});
}

/// @nodoc
class _$CalendarStateCopyWithImpl<$Res>
    implements $CalendarStateCopyWith<$Res> {
  _$CalendarStateCopyWithImpl(this._value, this._then);

  final CalendarState _value;
  // ignore: unused_field
  final $Res Function(CalendarState) _then;

  @override
  $Res call({
    Object appointments = freezed,
    Object calendarEntry = freezed,
    Object focusedDay = freezed,
    Object failureOrSuccess = freezed,
    Object isLoading = freezed,
    Object hashMapDay = freezed,
    Object hashMapMonth = freezed,
    Object daysPageController = freezed,
    Object threeDaysPageController = freezed,
    Object weekPageController = freezed,
    Object monthPageController = freezed,
  }) {
    return _then(_value.copyWith(
      appointments: appointments == freezed
          ? _value.appointments
          : appointments as List<Appointment>,
      calendarEntry: calendarEntry == freezed
          ? _value.calendarEntry
          : calendarEntry as CalendarEntry,
      focusedDay:
          focusedDay == freezed ? _value.focusedDay : focusedDay as DateTime,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<CalendarFailure, Unit>>,
      isLoading:
          isLoading == freezed ? _value.isLoading : isLoading as Option<Unit>,
      hashMapDay: hashMapDay == freezed
          ? _value.hashMapDay
          : hashMapDay as HashMap<DateTime, List<StartDurationItem>>,
      hashMapMonth: hashMapMonth == freezed
          ? _value.hashMapMonth
          : hashMapMonth as HashMap<DateTime, Widget>,
      daysPageController: daysPageController == freezed
          ? _value.daysPageController
          : daysPageController as DaysPageController,
      threeDaysPageController: threeDaysPageController == freezed
          ? _value.threeDaysPageController
          : threeDaysPageController as DaysPageController,
      weekPageController: weekPageController == freezed
          ? _value.weekPageController
          : weekPageController as DaysPageController,
      monthPageController: monthPageController == freezed
          ? _value.monthPageController
          : monthPageController as MonthPageController,
    ));
  }
}

/// @nodoc
abstract class _$CalendarStateCopyWith<$Res>
    implements $CalendarStateCopyWith<$Res> {
  factory _$CalendarStateCopyWith(
          _CalendarState value, $Res Function(_CalendarState) then) =
      __$CalendarStateCopyWithImpl<$Res>;
  @override
  $Res call(
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
      MonthPageController monthPageController});
}

/// @nodoc
class __$CalendarStateCopyWithImpl<$Res>
    extends _$CalendarStateCopyWithImpl<$Res>
    implements _$CalendarStateCopyWith<$Res> {
  __$CalendarStateCopyWithImpl(
      _CalendarState _value, $Res Function(_CalendarState) _then)
      : super(_value, (v) => _then(v as _CalendarState));

  @override
  _CalendarState get _value => super._value as _CalendarState;

  @override
  $Res call({
    Object appointments = freezed,
    Object calendarEntry = freezed,
    Object focusedDay = freezed,
    Object failureOrSuccess = freezed,
    Object isLoading = freezed,
    Object hashMapDay = freezed,
    Object hashMapMonth = freezed,
    Object daysPageController = freezed,
    Object threeDaysPageController = freezed,
    Object weekPageController = freezed,
    Object monthPageController = freezed,
  }) {
    return _then(_CalendarState(
      appointments: appointments == freezed
          ? _value.appointments
          : appointments as List<Appointment>,
      calendarEntry: calendarEntry == freezed
          ? _value.calendarEntry
          : calendarEntry as CalendarEntry,
      focusedDay:
          focusedDay == freezed ? _value.focusedDay : focusedDay as DateTime,
      failureOrSuccess: failureOrSuccess == freezed
          ? _value.failureOrSuccess
          : failureOrSuccess as Option<Either<CalendarFailure, Unit>>,
      isLoading:
          isLoading == freezed ? _value.isLoading : isLoading as Option<Unit>,
      hashMapDay: hashMapDay == freezed
          ? _value.hashMapDay
          : hashMapDay as HashMap<DateTime, List<StartDurationItem>>,
      hashMapMonth: hashMapMonth == freezed
          ? _value.hashMapMonth
          : hashMapMonth as HashMap<DateTime, Widget>,
      daysPageController: daysPageController == freezed
          ? _value.daysPageController
          : daysPageController as DaysPageController,
      threeDaysPageController: threeDaysPageController == freezed
          ? _value.threeDaysPageController
          : threeDaysPageController as DaysPageController,
      weekPageController: weekPageController == freezed
          ? _value.weekPageController
          : weekPageController as DaysPageController,
      monthPageController: monthPageController == freezed
          ? _value.monthPageController
          : monthPageController as MonthPageController,
    ));
  }
}

/// @nodoc
class _$_CalendarState implements _CalendarState {
  const _$_CalendarState(
      {this.appointments,
      this.calendarEntry,
      this.focusedDay,
      this.failureOrSuccess,
      this.isLoading,
      this.hashMapDay,
      this.hashMapMonth,
      this.daysPageController,
      this.threeDaysPageController,
      this.weekPageController,
      this.monthPageController});

  @override
  final List<Appointment> appointments;
  @override
  final CalendarEntry calendarEntry;
  @override
  final DateTime focusedDay;
  @override
  final Option<Either<CalendarFailure, Unit>> failureOrSuccess;
  @override
  final Option<Unit> isLoading;
  @override
  final HashMap<DateTime, List<StartDurationItem>> hashMapDay;
  @override
  final HashMap<DateTime, Widget> hashMapMonth;
  @override
  final DaysPageController daysPageController;
  @override
  final DaysPageController threeDaysPageController;
  @override
  final DaysPageController weekPageController;
  @override
  final MonthPageController monthPageController;

  @override
  String toString() {
    return 'CalendarState(appointments: $appointments, calendarEntry: $calendarEntry, focusedDay: $focusedDay, failureOrSuccess: $failureOrSuccess, isLoading: $isLoading, hashMapDay: $hashMapDay, hashMapMonth: $hashMapMonth, daysPageController: $daysPageController, threeDaysPageController: $threeDaysPageController, weekPageController: $weekPageController, monthPageController: $monthPageController)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _CalendarState &&
            (identical(other.appointments, appointments) ||
                const DeepCollectionEquality()
                    .equals(other.appointments, appointments)) &&
            (identical(other.calendarEntry, calendarEntry) ||
                const DeepCollectionEquality()
                    .equals(other.calendarEntry, calendarEntry)) &&
            (identical(other.focusedDay, focusedDay) ||
                const DeepCollectionEquality()
                    .equals(other.focusedDay, focusedDay)) &&
            (identical(other.failureOrSuccess, failureOrSuccess) ||
                const DeepCollectionEquality()
                    .equals(other.failureOrSuccess, failureOrSuccess)) &&
            (identical(other.isLoading, isLoading) ||
                const DeepCollectionEquality()
                    .equals(other.isLoading, isLoading)) &&
            (identical(other.hashMapDay, hashMapDay) ||
                const DeepCollectionEquality()
                    .equals(other.hashMapDay, hashMapDay)) &&
            (identical(other.hashMapMonth, hashMapMonth) ||
                const DeepCollectionEquality()
                    .equals(other.hashMapMonth, hashMapMonth)) &&
            (identical(other.daysPageController, daysPageController) ||
                const DeepCollectionEquality()
                    .equals(other.daysPageController, daysPageController)) &&
            (identical(
                    other.threeDaysPageController, threeDaysPageController) ||
                const DeepCollectionEquality().equals(
                    other.threeDaysPageController, threeDaysPageController)) &&
            (identical(other.weekPageController, weekPageController) ||
                const DeepCollectionEquality()
                    .equals(other.weekPageController, weekPageController)) &&
            (identical(other.monthPageController, monthPageController) ||
                const DeepCollectionEquality()
                    .equals(other.monthPageController, monthPageController)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(appointments) ^
      const DeepCollectionEquality().hash(calendarEntry) ^
      const DeepCollectionEquality().hash(focusedDay) ^
      const DeepCollectionEquality().hash(failureOrSuccess) ^
      const DeepCollectionEquality().hash(isLoading) ^
      const DeepCollectionEquality().hash(hashMapDay) ^
      const DeepCollectionEquality().hash(hashMapMonth) ^
      const DeepCollectionEquality().hash(daysPageController) ^
      const DeepCollectionEquality().hash(threeDaysPageController) ^
      const DeepCollectionEquality().hash(weekPageController) ^
      const DeepCollectionEquality().hash(monthPageController);

  @override
  _$CalendarStateCopyWith<_CalendarState> get copyWith =>
      __$CalendarStateCopyWithImpl<_CalendarState>(this, _$identity);
}

abstract class _CalendarState implements CalendarState {
  const factory _CalendarState(
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
      MonthPageController monthPageController}) = _$_CalendarState;

  @override
  List<Appointment> get appointments;
  @override
  CalendarEntry get calendarEntry;
  @override
  DateTime get focusedDay;
  @override
  Option<Either<CalendarFailure, Unit>> get failureOrSuccess;
  @override
  Option<Unit> get isLoading;
  @override
  HashMap<DateTime, List<StartDurationItem>> get hashMapDay;
  @override
  HashMap<DateTime, Widget> get hashMapMonth;
  @override
  DaysPageController get daysPageController;
  @override
  DaysPageController get threeDaysPageController;
  @override
  DaysPageController get weekPageController;
  @override
  MonthPageController get monthPageController;
  @override
  _$CalendarStateCopyWith<_CalendarState> get copyWith;
}
