import 'package:flutter/material.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DrawerChild extends StatelessWidget {
  const DrawerChild({
    Key key,
    this.model,
    this.calendarEntry,
  }) : super(key: key);

  final CalendarState model;
  final CalendarEntry calendarEntry;

  @override
  Widget build(BuildContext context) {
    String _getTitle() {
      switch (calendarEntry) {
        case CalendarEntry.day:
          return 'Day';

          break;
        case CalendarEntry.threeDays:
          return '3 days';

          break;
        case CalendarEntry.week:
          return 'Week';

          break;
        case CalendarEntry.month:
          return 'Month';

          break;
        default:
          return 'Day';
      }
    }

    IconData _getIcons() {
      switch (calendarEntry) {
        case CalendarEntry.day:
          return Icons.calendar_view_day_outlined;

          break;
        case CalendarEntry.threeDays:
          return Icons.map_outlined;

          break;
        case CalendarEntry.week:
          return Icons.calendar_view_day_outlined;

          break;
        case CalendarEntry.month:
          return Icons.calendar_view_day_outlined;

          break;
        default:
          return Icons.calendar_view_day_outlined;
      }
    }

    return InkWell(
      onTap: () {
        BlocProvider.of<CalendarBloc>(context).add(
            CalendarEvent.updateCalendarView(calendarEntry: calendarEntry));
        Navigator.pop(context);
      },
      child: Row(
        children: [
          Flexible(
            flex: 20,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              padding:
                  const EdgeInsets.symmetric(vertical: 10).copyWith(left: 20),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topRight: Radius.circular(50),
                  bottomRight: Radius.circular(50),
                ),
                color: model.calendarEntry == calendarEntry
                    ? Palette.lightBlue.withOpacity(0.2)
                    : null,
              ),
              child: Row(
                children: [
                  Icon(
                    _getIcons(),
                    color: model.calendarEntry == calendarEntry
                        ? Palette.lightBlue
                        : Palette.greyWhite.withOpacity(0.75),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    _getTitle(),
                    style: TextStyle(
                        color: model.calendarEntry == calendarEntry
                            ? Palette.lightBlue
                            : Palette.greyWhite.withOpacity(0.5)),
                  ),
                ],
              ),
            ),
          ),
          const Flexible(child: Text(''))
        ],
      ),
    );
  }
}
