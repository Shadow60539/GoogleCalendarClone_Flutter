import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';

int minuteOfDayToHourMinuteString(int minuteOfDay) {
  return int.parse((minuteOfDay ~/ 60).toString().padLeft(2, "0"));
}

String timeHourString(int minuteOfDay) =>
    '${TimeOfDay(hour: minuteOfDayToHourMinuteString(minuteOfDay), minute: 0).hourOfPeriod.toString() == "0" ? 12 : TimeOfDay(hour: minuteOfDayToHourMinuteString(minuteOfDay), minute: 0).hourOfPeriod.toString()} ${TimeOfDay(hour: minuteOfDayToHourMinuteString(minuteOfDay), minute: 0).period.index == 0 ? "AM" : "PM"}';

String timeHourMinuteString(DateTime day) => '${formatDate(day, [
      'h',
      ':',
      'nn',
      ' ',
      '${TimeOfDay.fromDateTime(day).period == DayPeriod.am ? "AM" : "PM"}',
    ])}';
