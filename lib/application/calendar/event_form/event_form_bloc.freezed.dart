// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'event_form_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$EventFormEventTearOff {
  const _$EventFormEventTearOff();

// ignore: unused_element
  _TitleChanged titleChanged(String title) {
    return _TitleChanged(
      title,
    );
  }

// ignore: unused_element
  _StartDateChanged startDateChanged(DateTime day) {
    return _StartDateChanged(
      day,
    );
  }

// ignore: unused_element
  _StartTimeChanged startTimeChanged(TimeOfDay time) {
    return _StartTimeChanged(
      time,
    );
  }

// ignore: unused_element
  _EndDateChanged endDateChanged(DateTime day) {
    return _EndDateChanged(
      day,
    );
  }

// ignore: unused_element
  _EndTimeChanged endtTimeChanged(TimeOfDay time) {
    return _EndTimeChanged(
      time,
    );
  }

// ignore: unused_element
  _UpdateEvent updateEvent(
      {String title, DateTime start, DateTime end, String event}) {
    return _UpdateEvent(
      title: title,
      start: start,
      end: end,
      event: event,
    );
  }

// ignore: unused_element
  _SaveEventPressed savePressed() {
    return const _SaveEventPressed();
  }

// ignore: unused_element
  UpdateEventPressed updatePressed() {
    return const UpdateEventPressed();
  }
}

/// @nodoc
// ignore: unused_element
const $EventFormEvent = _$EventFormEventTearOff();

/// @nodoc
mixin _$EventFormEvent {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $EventFormEventCopyWith<$Res> {
  factory $EventFormEventCopyWith(
          EventFormEvent value, $Res Function(EventFormEvent) then) =
      _$EventFormEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$EventFormEventCopyWithImpl<$Res>
    implements $EventFormEventCopyWith<$Res> {
  _$EventFormEventCopyWithImpl(this._value, this._then);

  final EventFormEvent _value;
  // ignore: unused_field
  final $Res Function(EventFormEvent) _then;
}

/// @nodoc
abstract class _$TitleChangedCopyWith<$Res> {
  factory _$TitleChangedCopyWith(
          _TitleChanged value, $Res Function(_TitleChanged) then) =
      __$TitleChangedCopyWithImpl<$Res>;
  $Res call({String title});
}

/// @nodoc
class __$TitleChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$TitleChangedCopyWith<$Res> {
  __$TitleChangedCopyWithImpl(
      _TitleChanged _value, $Res Function(_TitleChanged) _then)
      : super(_value, (v) => _then(v as _TitleChanged));

  @override
  _TitleChanged get _value => super._value as _TitleChanged;

  @override
  $Res call({
    Object title = freezed,
  }) {
    return _then(_TitleChanged(
      title == freezed ? _value.title : title as String,
    ));
  }
}

/// @nodoc
class _$_TitleChanged implements _TitleChanged {
  const _$_TitleChanged(this.title) : assert(title != null);

  @override
  final String title;

  @override
  String toString() {
    return 'EventFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _TitleChanged &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(title);

  @override
  _$TitleChangedCopyWith<_TitleChanged> get copyWith =>
      __$TitleChangedCopyWithImpl<_TitleChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class _TitleChanged implements EventFormEvent {
  const factory _TitleChanged(String title) = _$_TitleChanged;

  String get title;
  _$TitleChangedCopyWith<_TitleChanged> get copyWith;
}

/// @nodoc
abstract class _$StartDateChangedCopyWith<$Res> {
  factory _$StartDateChangedCopyWith(
          _StartDateChanged value, $Res Function(_StartDateChanged) then) =
      __$StartDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class __$StartDateChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$StartDateChangedCopyWith<$Res> {
  __$StartDateChangedCopyWithImpl(
      _StartDateChanged _value, $Res Function(_StartDateChanged) _then)
      : super(_value, (v) => _then(v as _StartDateChanged));

  @override
  _StartDateChanged get _value => super._value as _StartDateChanged;

  @override
  $Res call({
    Object day = freezed,
  }) {
    return _then(_StartDateChanged(
      day == freezed ? _value.day : day as DateTime,
    ));
  }
}

/// @nodoc
class _$_StartDateChanged implements _StartDateChanged {
  const _$_StartDateChanged(this.day) : assert(day != null);

  @override
  final DateTime day;

  @override
  String toString() {
    return 'EventFormEvent.startDateChanged(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartDateChanged &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(day);

  @override
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith =>
      __$StartDateChangedCopyWithImpl<_StartDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return startDateChanged(day);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return startDateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startDateChanged != null) {
      return startDateChanged(this);
    }
    return orElse();
  }
}

abstract class _StartDateChanged implements EventFormEvent {
  const factory _StartDateChanged(DateTime day) = _$_StartDateChanged;

  DateTime get day;
  _$StartDateChangedCopyWith<_StartDateChanged> get copyWith;
}

/// @nodoc
abstract class _$StartTimeChangedCopyWith<$Res> {
  factory _$StartTimeChangedCopyWith(
          _StartTimeChanged value, $Res Function(_StartTimeChanged) then) =
      __$StartTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$StartTimeChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$StartTimeChangedCopyWith<$Res> {
  __$StartTimeChangedCopyWithImpl(
      _StartTimeChanged _value, $Res Function(_StartTimeChanged) _then)
      : super(_value, (v) => _then(v as _StartTimeChanged));

  @override
  _StartTimeChanged get _value => super._value as _StartTimeChanged;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_StartTimeChanged(
      time == freezed ? _value.time : time as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_StartTimeChanged implements _StartTimeChanged {
  const _$_StartTimeChanged(this.time) : assert(time != null);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'EventFormEvent.startTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StartTimeChanged &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @override
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith =>
      __$StartTimeChangedCopyWithImpl<_StartTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return startTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return startTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (startTimeChanged != null) {
      return startTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _StartTimeChanged implements EventFormEvent {
  const factory _StartTimeChanged(TimeOfDay time) = _$_StartTimeChanged;

  TimeOfDay get time;
  _$StartTimeChangedCopyWith<_StartTimeChanged> get copyWith;
}

/// @nodoc
abstract class _$EndDateChangedCopyWith<$Res> {
  factory _$EndDateChangedCopyWith(
          _EndDateChanged value, $Res Function(_EndDateChanged) then) =
      __$EndDateChangedCopyWithImpl<$Res>;
  $Res call({DateTime day});
}

/// @nodoc
class __$EndDateChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$EndDateChangedCopyWith<$Res> {
  __$EndDateChangedCopyWithImpl(
      _EndDateChanged _value, $Res Function(_EndDateChanged) _then)
      : super(_value, (v) => _then(v as _EndDateChanged));

  @override
  _EndDateChanged get _value => super._value as _EndDateChanged;

  @override
  $Res call({
    Object day = freezed,
  }) {
    return _then(_EndDateChanged(
      day == freezed ? _value.day : day as DateTime,
    ));
  }
}

/// @nodoc
class _$_EndDateChanged implements _EndDateChanged {
  const _$_EndDateChanged(this.day) : assert(day != null);

  @override
  final DateTime day;

  @override
  String toString() {
    return 'EventFormEvent.endDateChanged(day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndDateChanged &&
            (identical(other.day, day) ||
                const DeepCollectionEquality().equals(other.day, day)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(day);

  @override
  _$EndDateChangedCopyWith<_EndDateChanged> get copyWith =>
      __$EndDateChangedCopyWithImpl<_EndDateChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return endDateChanged(day);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endDateChanged != null) {
      return endDateChanged(day);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return endDateChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endDateChanged != null) {
      return endDateChanged(this);
    }
    return orElse();
  }
}

abstract class _EndDateChanged implements EventFormEvent {
  const factory _EndDateChanged(DateTime day) = _$_EndDateChanged;

  DateTime get day;
  _$EndDateChangedCopyWith<_EndDateChanged> get copyWith;
}

/// @nodoc
abstract class _$EndTimeChangedCopyWith<$Res> {
  factory _$EndTimeChangedCopyWith(
          _EndTimeChanged value, $Res Function(_EndTimeChanged) then) =
      __$EndTimeChangedCopyWithImpl<$Res>;
  $Res call({TimeOfDay time});
}

/// @nodoc
class __$EndTimeChangedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$EndTimeChangedCopyWith<$Res> {
  __$EndTimeChangedCopyWithImpl(
      _EndTimeChanged _value, $Res Function(_EndTimeChanged) _then)
      : super(_value, (v) => _then(v as _EndTimeChanged));

  @override
  _EndTimeChanged get _value => super._value as _EndTimeChanged;

  @override
  $Res call({
    Object time = freezed,
  }) {
    return _then(_EndTimeChanged(
      time == freezed ? _value.time : time as TimeOfDay,
    ));
  }
}

/// @nodoc
class _$_EndTimeChanged implements _EndTimeChanged {
  const _$_EndTimeChanged(this.time) : assert(time != null);

  @override
  final TimeOfDay time;

  @override
  String toString() {
    return 'EventFormEvent.endtTimeChanged(time: $time)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EndTimeChanged &&
            (identical(other.time, time) ||
                const DeepCollectionEquality().equals(other.time, time)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(time);

  @override
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith =>
      __$EndTimeChangedCopyWithImpl<_EndTimeChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return endtTimeChanged(time);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endtTimeChanged != null) {
      return endtTimeChanged(time);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return endtTimeChanged(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (endtTimeChanged != null) {
      return endtTimeChanged(this);
    }
    return orElse();
  }
}

abstract class _EndTimeChanged implements EventFormEvent {
  const factory _EndTimeChanged(TimeOfDay time) = _$_EndTimeChanged;

  TimeOfDay get time;
  _$EndTimeChangedCopyWith<_EndTimeChanged> get copyWith;
}

/// @nodoc
abstract class _$UpdateEventCopyWith<$Res> {
  factory _$UpdateEventCopyWith(
          _UpdateEvent value, $Res Function(_UpdateEvent) then) =
      __$UpdateEventCopyWithImpl<$Res>;
  $Res call({String title, DateTime start, DateTime end, String event});
}

/// @nodoc
class __$UpdateEventCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$UpdateEventCopyWith<$Res> {
  __$UpdateEventCopyWithImpl(
      _UpdateEvent _value, $Res Function(_UpdateEvent) _then)
      : super(_value, (v) => _then(v as _UpdateEvent));

  @override
  _UpdateEvent get _value => super._value as _UpdateEvent;

  @override
  $Res call({
    Object title = freezed,
    Object start = freezed,
    Object end = freezed,
    Object event = freezed,
  }) {
    return _then(_UpdateEvent(
      title: title == freezed ? _value.title : title as String,
      start: start == freezed ? _value.start : start as DateTime,
      end: end == freezed ? _value.end : end as DateTime,
      event: event == freezed ? _value.event : event as String,
    ));
  }
}

/// @nodoc
class _$_UpdateEvent implements _UpdateEvent {
  const _$_UpdateEvent({this.title, this.start, this.end, this.event});

  @override
  final String title;
  @override
  final DateTime start;
  @override
  final DateTime end;
  @override
  final String event;

  @override
  String toString() {
    return 'EventFormEvent.updateEvent(title: $title, start: $start, end: $end, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _UpdateEvent &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.start, start) ||
                const DeepCollectionEquality().equals(other.start, start)) &&
            (identical(other.end, end) ||
                const DeepCollectionEquality().equals(other.end, end)) &&
            (identical(other.event, event) ||
                const DeepCollectionEquality().equals(other.event, event)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(start) ^
      const DeepCollectionEquality().hash(end) ^
      const DeepCollectionEquality().hash(event);

  @override
  _$UpdateEventCopyWith<_UpdateEvent> get copyWith =>
      __$UpdateEventCopyWithImpl<_UpdateEvent>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return updateEvent(title, start, end, event);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateEvent != null) {
      return updateEvent(title, start, end, event);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return updateEvent(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updateEvent != null) {
      return updateEvent(this);
    }
    return orElse();
  }
}

abstract class _UpdateEvent implements EventFormEvent {
  const factory _UpdateEvent(
      {String title,
      DateTime start,
      DateTime end,
      String event}) = _$_UpdateEvent;

  String get title;
  DateTime get start;
  DateTime get end;
  String get event;
  _$UpdateEventCopyWith<_UpdateEvent> get copyWith;
}

/// @nodoc
abstract class _$SaveEventPressedCopyWith<$Res> {
  factory _$SaveEventPressedCopyWith(
          _SaveEventPressed value, $Res Function(_SaveEventPressed) then) =
      __$SaveEventPressedCopyWithImpl<$Res>;
}

/// @nodoc
class __$SaveEventPressedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements _$SaveEventPressedCopyWith<$Res> {
  __$SaveEventPressedCopyWithImpl(
      _SaveEventPressed _value, $Res Function(_SaveEventPressed) _then)
      : super(_value, (v) => _then(v as _SaveEventPressed));

  @override
  _SaveEventPressed get _value => super._value as _SaveEventPressed;
}

/// @nodoc
class _$_SaveEventPressed implements _SaveEventPressed {
  const _$_SaveEventPressed();

  @override
  String toString() {
    return 'EventFormEvent.savePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _SaveEventPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return savePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savePressed != null) {
      return savePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return savePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (savePressed != null) {
      return savePressed(this);
    }
    return orElse();
  }
}

abstract class _SaveEventPressed implements EventFormEvent {
  const factory _SaveEventPressed() = _$_SaveEventPressed;
}

/// @nodoc
abstract class $UpdateEventPressedCopyWith<$Res> {
  factory $UpdateEventPressedCopyWith(
          UpdateEventPressed value, $Res Function(UpdateEventPressed) then) =
      _$UpdateEventPressedCopyWithImpl<$Res>;
}

/// @nodoc
class _$UpdateEventPressedCopyWithImpl<$Res>
    extends _$EventFormEventCopyWithImpl<$Res>
    implements $UpdateEventPressedCopyWith<$Res> {
  _$UpdateEventPressedCopyWithImpl(
      UpdateEventPressed _value, $Res Function(UpdateEventPressed) _then)
      : super(_value, (v) => _then(v as UpdateEventPressed));

  @override
  UpdateEventPressed get _value => super._value as UpdateEventPressed;
}

/// @nodoc
class _$UpdateEventPressed implements UpdateEventPressed {
  const _$UpdateEventPressed();

  @override
  String toString() {
    return 'EventFormEvent.updatePressed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is UpdateEventPressed);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result titleChanged(String title),
    @required Result startDateChanged(DateTime day),
    @required Result startTimeChanged(TimeOfDay time),
    @required Result endDateChanged(DateTime day),
    @required Result endtTimeChanged(TimeOfDay time),
    @required
        Result updateEvent(
            String title, DateTime start, DateTime end, String event),
    @required Result savePressed(),
    @required Result updatePressed(),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return updatePressed();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result titleChanged(String title),
    Result startDateChanged(DateTime day),
    Result startTimeChanged(TimeOfDay time),
    Result endDateChanged(DateTime day),
    Result endtTimeChanged(TimeOfDay time),
    Result updateEvent(
        String title, DateTime start, DateTime end, String event),
    Result savePressed(),
    Result updatePressed(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePressed != null) {
      return updatePressed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result titleChanged(_TitleChanged value),
    @required Result startDateChanged(_StartDateChanged value),
    @required Result startTimeChanged(_StartTimeChanged value),
    @required Result endDateChanged(_EndDateChanged value),
    @required Result endtTimeChanged(_EndTimeChanged value),
    @required Result updateEvent(_UpdateEvent value),
    @required Result savePressed(_SaveEventPressed value),
    @required Result updatePressed(UpdateEventPressed value),
  }) {
    assert(titleChanged != null);
    assert(startDateChanged != null);
    assert(startTimeChanged != null);
    assert(endDateChanged != null);
    assert(endtTimeChanged != null);
    assert(updateEvent != null);
    assert(savePressed != null);
    assert(updatePressed != null);
    return updatePressed(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result titleChanged(_TitleChanged value),
    Result startDateChanged(_StartDateChanged value),
    Result startTimeChanged(_StartTimeChanged value),
    Result endDateChanged(_EndDateChanged value),
    Result endtTimeChanged(_EndTimeChanged value),
    Result updateEvent(_UpdateEvent value),
    Result savePressed(_SaveEventPressed value),
    Result updatePressed(UpdateEventPressed value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (updatePressed != null) {
      return updatePressed(this);
    }
    return orElse();
  }
}

abstract class UpdateEventPressed implements EventFormEvent {
  const factory UpdateEventPressed() = _$UpdateEventPressed;
}

/// @nodoc
class _$EventFormStateTearOff {
  const _$EventFormStateTearOff();

// ignore: unused_element
  _EventFormState call(
      {@required
          StringSingleLine title,
      String eventId,
      @required
          bool showErrorMessages,
      @required
          DateTime startDate,
      @required
          DateTime endDate,
      @required
          TimeOfDay startTime,
      @required
          TimeOfDay endTime,
      @required
          Option<Either<CalendarFailure, Unit>> calFailureOrSuccessOption}) {
    return _EventFormState(
      title: title,
      eventId: eventId,
      showErrorMessages: showErrorMessages,
      startDate: startDate,
      endDate: endDate,
      startTime: startTime,
      endTime: endTime,
      calFailureOrSuccessOption: calFailureOrSuccessOption,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $EventFormState = _$EventFormStateTearOff();

/// @nodoc
mixin _$EventFormState {
  StringSingleLine get title;
  String get eventId;
  bool get showErrorMessages;
  DateTime get startDate;
  DateTime get endDate;
  TimeOfDay get startTime;
  TimeOfDay get endTime;
  Option<Either<CalendarFailure, Unit>> get calFailureOrSuccessOption;

  $EventFormStateCopyWith<EventFormState> get copyWith;
}

/// @nodoc
abstract class $EventFormStateCopyWith<$Res> {
  factory $EventFormStateCopyWith(
          EventFormState value, $Res Function(EventFormState) then) =
      _$EventFormStateCopyWithImpl<$Res>;
  $Res call(
      {StringSingleLine title,
      String eventId,
      bool showErrorMessages,
      DateTime startDate,
      DateTime endDate,
      TimeOfDay startTime,
      TimeOfDay endTime,
      Option<Either<CalendarFailure, Unit>> calFailureOrSuccessOption});
}

/// @nodoc
class _$EventFormStateCopyWithImpl<$Res>
    implements $EventFormStateCopyWith<$Res> {
  _$EventFormStateCopyWithImpl(this._value, this._then);

  final EventFormState _value;
  // ignore: unused_field
  final $Res Function(EventFormState) _then;

  @override
  $Res call({
    Object title = freezed,
    Object eventId = freezed,
    Object showErrorMessages = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object calFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      title: title == freezed ? _value.title : title as StringSingleLine,
      eventId: eventId == freezed ? _value.eventId : eventId as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      startTime:
          startTime == freezed ? _value.startTime : startTime as TimeOfDay,
      endTime: endTime == freezed ? _value.endTime : endTime as TimeOfDay,
      calFailureOrSuccessOption: calFailureOrSuccessOption == freezed
          ? _value.calFailureOrSuccessOption
          : calFailureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
abstract class _$EventFormStateCopyWith<$Res>
    implements $EventFormStateCopyWith<$Res> {
  factory _$EventFormStateCopyWith(
          _EventFormState value, $Res Function(_EventFormState) then) =
      __$EventFormStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {StringSingleLine title,
      String eventId,
      bool showErrorMessages,
      DateTime startDate,
      DateTime endDate,
      TimeOfDay startTime,
      TimeOfDay endTime,
      Option<Either<CalendarFailure, Unit>> calFailureOrSuccessOption});
}

/// @nodoc
class __$EventFormStateCopyWithImpl<$Res>
    extends _$EventFormStateCopyWithImpl<$Res>
    implements _$EventFormStateCopyWith<$Res> {
  __$EventFormStateCopyWithImpl(
      _EventFormState _value, $Res Function(_EventFormState) _then)
      : super(_value, (v) => _then(v as _EventFormState));

  @override
  _EventFormState get _value => super._value as _EventFormState;

  @override
  $Res call({
    Object title = freezed,
    Object eventId = freezed,
    Object showErrorMessages = freezed,
    Object startDate = freezed,
    Object endDate = freezed,
    Object startTime = freezed,
    Object endTime = freezed,
    Object calFailureOrSuccessOption = freezed,
  }) {
    return _then(_EventFormState(
      title: title == freezed ? _value.title : title as StringSingleLine,
      eventId: eventId == freezed ? _value.eventId : eventId as String,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages as bool,
      startDate:
          startDate == freezed ? _value.startDate : startDate as DateTime,
      endDate: endDate == freezed ? _value.endDate : endDate as DateTime,
      startTime:
          startTime == freezed ? _value.startTime : startTime as TimeOfDay,
      endTime: endTime == freezed ? _value.endTime : endTime as TimeOfDay,
      calFailureOrSuccessOption: calFailureOrSuccessOption == freezed
          ? _value.calFailureOrSuccessOption
          : calFailureOrSuccessOption as Option<Either<CalendarFailure, Unit>>,
    ));
  }
}

/// @nodoc
class _$_EventFormState implements _EventFormState {
  const _$_EventFormState(
      {@required this.title,
      this.eventId,
      @required this.showErrorMessages,
      @required this.startDate,
      @required this.endDate,
      @required this.startTime,
      @required this.endTime,
      @required this.calFailureOrSuccessOption})
      : assert(title != null),
        assert(showErrorMessages != null),
        assert(startDate != null),
        assert(endDate != null),
        assert(startTime != null),
        assert(endTime != null),
        assert(calFailureOrSuccessOption != null);

  @override
  final StringSingleLine title;
  @override
  final String eventId;
  @override
  final bool showErrorMessages;
  @override
  final DateTime startDate;
  @override
  final DateTime endDate;
  @override
  final TimeOfDay startTime;
  @override
  final TimeOfDay endTime;
  @override
  final Option<Either<CalendarFailure, Unit>> calFailureOrSuccessOption;

  @override
  String toString() {
    return 'EventFormState(title: $title, eventId: $eventId, showErrorMessages: $showErrorMessages, startDate: $startDate, endDate: $endDate, startTime: $startTime, endTime: $endTime, calFailureOrSuccessOption: $calFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _EventFormState &&
            (identical(other.title, title) ||
                const DeepCollectionEquality().equals(other.title, title)) &&
            (identical(other.eventId, eventId) ||
                const DeepCollectionEquality()
                    .equals(other.eventId, eventId)) &&
            (identical(other.showErrorMessages, showErrorMessages) ||
                const DeepCollectionEquality()
                    .equals(other.showErrorMessages, showErrorMessages)) &&
            (identical(other.startDate, startDate) ||
                const DeepCollectionEquality()
                    .equals(other.startDate, startDate)) &&
            (identical(other.endDate, endDate) ||
                const DeepCollectionEquality()
                    .equals(other.endDate, endDate)) &&
            (identical(other.startTime, startTime) ||
                const DeepCollectionEquality()
                    .equals(other.startTime, startTime)) &&
            (identical(other.endTime, endTime) ||
                const DeepCollectionEquality()
                    .equals(other.endTime, endTime)) &&
            (identical(other.calFailureOrSuccessOption,
                    calFailureOrSuccessOption) ||
                const DeepCollectionEquality().equals(
                    other.calFailureOrSuccessOption,
                    calFailureOrSuccessOption)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(title) ^
      const DeepCollectionEquality().hash(eventId) ^
      const DeepCollectionEquality().hash(showErrorMessages) ^
      const DeepCollectionEquality().hash(startDate) ^
      const DeepCollectionEquality().hash(endDate) ^
      const DeepCollectionEquality().hash(startTime) ^
      const DeepCollectionEquality().hash(endTime) ^
      const DeepCollectionEquality().hash(calFailureOrSuccessOption);

  @override
  _$EventFormStateCopyWith<_EventFormState> get copyWith =>
      __$EventFormStateCopyWithImpl<_EventFormState>(this, _$identity);
}

abstract class _EventFormState implements EventFormState {
  const factory _EventFormState(
      {@required
          StringSingleLine title,
      String eventId,
      @required
          bool showErrorMessages,
      @required
          DateTime startDate,
      @required
          DateTime endDate,
      @required
          TimeOfDay startTime,
      @required
          TimeOfDay endTime,
      @required
          Option<Either<CalendarFailure, Unit>>
              calFailureOrSuccessOption}) = _$_EventFormState;

  @override
  StringSingleLine get title;
  @override
  String get eventId;
  @override
  bool get showErrorMessages;
  @override
  DateTime get startDate;
  @override
  DateTime get endDate;
  @override
  TimeOfDay get startTime;
  @override
  TimeOfDay get endTime;
  @override
  Option<Either<CalendarFailure, Unit>> get calFailureOrSuccessOption;
  @override
  _$EventFormStateCopyWith<_EventFormState> get copyWith;
}
