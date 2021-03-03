import 'package:animations/animations.dart';
import 'package:calendar_views/calendar_views.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/presentation/calendar/utils/minute_of_day_to_hour.dart';
import 'package:flutter_app/presentation/calendar/utils/weekday_string.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_app/presentation/home/pages/appointment_page.dart';

Widget headerItemBuilder(
    BuildContext context, DateTime day, CalendarEntry calendarEntry) {
  return Align(
    alignment: Alignment.centerLeft,
    child: Column(
      children: <Widget>[
        const SizedBox(
          height: 10,
        ),
        Text(
          calendarEntry == CalendarEntry.week
              ? weekdayToAbbreviatedString(day.weekday)
                  .substring(0, 1)
                  .toUpperCase()
              : weekdayToAbbreviatedString(day.weekday).toUpperCase(),
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Palette.greyWhite.withOpacity(0.75),
              fontSize: 12),
        ),
        Text(
          "${day.day}",
          style: TextStyle(fontSize: 16, color: Palette.greyWhite),
        ),
      ],
    ),
  );
}

Positioned generatedTimeIndicatorBuilder(
  BuildContext context,
  ItemPosition itemPosition,
  ItemSize itemSize,
  int minuteOfDay,
) {
  return Positioned(
    top: itemPosition.top,
    left: itemPosition.left,
    width: itemSize.width,
    height: itemSize.height,
    child: Center(
      child: Text(
        timeHourString(minuteOfDay),
        style: TextStyle(color: Palette.greyWhite.withOpacity(0.5)),
      ),
    ),
  );
}

Positioned generatedSupportLineBuilder(
  BuildContext context,
  ItemPosition itemPosition,
  double itemWidth,
  int minuteOfDay,
) {
  return Positioned(
    top: itemPosition.top,
    left: itemPosition.left,
    width: itemWidth,
    child: Container(
      height: 0.1,
      color: Palette.greyWhite,
    ),
  );
}

Positioned generatedDaySeparatorBuilder(
  BuildContext context,
  ItemPosition itemPosition,
  ItemSize itemSize,
  int daySeparatorNumber,
) {
  return Positioned(
    top: itemPosition.top,
    left: itemPosition.left,
    width: itemSize.width,
    height: itemSize.height,
    child: Center(
      child: Container(
        width: 0.1,
        color: Palette.greyWhite,
      ),
    ),
  );
}

Positioned eventBuilder(
  BuildContext context,
  ItemPosition itemPosition,
  ItemSize itemSize,
  Appointment event,
) {
  return Positioned(
    top: itemPosition.top,
    left: itemPosition.left,
    width: itemSize.width,
    height: itemSize.height,
    child: OpenContainer(
      openElevation: 0,
      closedElevation: 0,
      transitionType: ContainerTransitionType.fadeThrough,
      closedColor: Palette.lightBlue,
      openColor: Colors.black,
      closedBuilder: (context, action) {
        return InkWell(
          onTap: action,
          child: Container(
            margin: const EdgeInsets.only(left: 1.0, right: 1.0, bottom: 1.0),
            padding: const EdgeInsets.all(3.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(3),
              color: Palette.lightBlue,
            ),
            child: Text(
              event.title ?? '(No title)',
              overflow: TextOverflow.fade,
              style: TextStyle(
                color: Palette.white,
                fontSize: 12,
              ),
            ),
          ),
        );
      },
      openBuilder: (context, action) {
        return AppointmentPage(
          event: event,
        );
      },
    ),
  );
}
