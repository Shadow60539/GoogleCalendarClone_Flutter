import 'package:calendar_views/calendar_views.dart';
import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/presentation/calendar/utils/weekday_string.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CalendarMonthPage extends StatefulWidget {
  @override
  State createState() => _CalendarMonthPageState();
}

class _CalendarMonthPageState extends State<CalendarMonthPage> {
  DateTime _focusedDate = DateTime.now();
  @override
  void initState() {
    SchedulerBinding.instance.addPostFrameCallback((timeStamp) {
      _focusedDate = BlocProvider.of<CalendarBloc>(context).state.focusedDay;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarBloc, CalendarState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
            // backgroundColor: Palette.white,
            body: MonthPageView(
          controller: state.monthPageController,
          onMonthChanged: (newDay) {
            BlocProvider.of<CalendarBloc>(context)
                .add(CalendarEvent.onDaysChanged(newDay: newDay));
          },
          pageBuilder: (_, month) {
            return MonthView(
              month: month,
              firstWeekday: 7,
              headerItemBuilder: _headerItemBuilder,
              dayOfMonthBuilder: _daysOfMonthBuilder,
            );
          },
        ));
      },
    );
  }

  Widget _headerItemBuilder(BuildContext context, int weekDay) {
    return Align(
      alignment: Alignment.topCenter,
      child: Column(
        children: <Widget>[
          const SizedBox(
            height: 10,
          ),
          Text(
            weekdayToAbbreviatedString(weekDay).substring(0, 1).toUpperCase(),
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Palette.greyWhite.withOpacity(0.5),
                fontSize: 12),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }

  Widget _daysOfMonthBuilder(BuildContext context, DayOfMonth dayOfMonth) {
    final _currentDay = dayOfMonth.day.day;
    final _currentMonth = dayOfMonth.month.month;

    final _cachedAppointments =
        BlocProvider.of<CalendarBloc>(context).state.hashMapMonth;

    if (_cachedAppointments[dayOfMonth.day] == null) {
      final _appointments = BlocProvider.of<CalendarBloc>(context)
          .state
          .appointments
          .where((element) =>
              element.start.day == _currentDay &&
              element.start.month == _currentMonth &&
              element.start.year == _focusedDate.year)
          .toList();
      _cachedAppointments[dayOfMonth.day] = _SingleDayBuilder(
        appointments: _appointments,
        day: dayOfMonth.day,
      );
      return _SingleDayBuilder(
        appointments: _appointments,
        day: dayOfMonth.day,
      );
    } else {
      return _cachedAppointments[dayOfMonth.day];
    }
  }
}

class _SingleDayBuilder extends StatelessWidget {
  const _SingleDayBuilder({
    Key key,
    @required List<Appointment> appointments,
    this.day,
  })  : _appointments = appointments,
        super(key: key);

  final List<Appointment> _appointments;
  final DateTime day;

  @override
  Widget build(BuildContext context) {
    final _isToday =
        DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day)
            .isAtSameMomentAs(DateTime(day.year, day.month, day.day));
    return InkWell(
      onTap: () {},
      child: Container(
          decoration: BoxDecoration(
              border: Border(
            left: BorderSide(
                color: Palette.greyWhite.withOpacity(0.5), width: 0.2),
            bottom: BorderSide(
                color: Palette.greyWhite.withOpacity(0.5), width: 0.2),
            right: BorderSide(
                color: Palette.greyWhite.withOpacity(0.5), width: 0.2),
            top: BorderSide(
                color: Palette.greyWhite.withOpacity(0.5), width: 0.2),
          )
              // right: BorderSide(color: Palette.black50, width: 0.2),
              ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 5),
                    padding: const EdgeInsets.all(4),
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: _isToday
                            ? Palette.bluishWhite
                            : Colors.transparent.withOpacity(0.2)),
                    child: Text(
                      formatDate(day, ['d']),
                      style: TextStyle(
                          color: _isToday
                              ? Palette.lightBlue
                              : Palette.greyWhite.withOpacity(0.5)),
                    ),
                  ),
                ),
              ),
              Column(
                children: List.generate(
                    _appointments.length > 4 ? 5 : _appointments.length + 1,
                    (index) {
                  final _lastIndex =
                      _appointments.length > 4 ? 4 : _appointments.length;
                  if (index == _lastIndex) {
                    return Visibility(
                      visible: _lastIndex > 3,
                      child: Icon(
                        Icons.more_horiz_rounded,
                        color: Palette.greyWhite,
                        size: 16,
                      ),
                    );
                  } else {
                    return Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(left: 4),
                      margin:
                          const EdgeInsets.only(bottom: 2, left: 1, right: 1),
                      decoration: BoxDecoration(
                          color: Palette.lightBlue,
                          borderRadius: BorderRadius.circular(2)),
                      child: Text(
                        _appointments[index].title,
                        style: TextStyle(fontSize: 10, color: Palette.white),
                        overflow: TextOverflow.fade,
                        maxLines: 1,
                      ),
                    );
                  }
                }, growable: false),
              ),
            ],
          )),
    );
  }
}
