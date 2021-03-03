import 'package:calendar_views/calendar_views.dart';
import 'package:calendar_views/day_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../utils/calendar_utils.dart';

class CalendarWeekPage extends StatefulWidget {
  @override
  State createState() => _CalendarWeekPageState();
}

class _CalendarWeekPageState extends State<CalendarWeekPage> {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CalendarBloc, CalendarState>(
      listener: (context, state) {
        //TODO: Catch Server Exceptions
      },
      builder: (context, state) {
        return Scaffold(
            // backgroundColor: Palette.white,
            body: DaysPageView(
              onDaysChanged: (listOfDays) {
                BlocProvider.of<CalendarBloc>(context)
                    .add(CalendarEvent.onDaysChanged(newDay: listOfDays.first));
              },
              controller: state.weekPageController,
              pageBuilder: (context, days) {
                return DayViewEssentials(
                  properties: DayViewProperties(
                    minimumMinuteOfDay: 60,
                    days: days,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.only(bottom: 20),
                        // decoration: BoxDecoration(color: Palette.white),
                        child: DayViewDaysHeader(
                          headerItemBuilder: (context, day) =>
                              headerItemBuilder(
                                  context, day, CalendarEntry.week),
                        ),
                      ),
                      Expanded(
                        child: SingleChildScrollView(
                          padding: const EdgeInsets.only(bottom: 50, top: 20),
                          child: DayViewSchedule(
                            topExtensionHeight: 10,
                            bottomExtensionHeight: 10,
                            heightPerMinute: 0.6,
                            components: <ScheduleComponent>[
                              TimeIndicationComponent.intervalGenerated(
                                generatedTimeIndicatorBuilder:
                                    generatedTimeIndicatorBuilder,
                              ),
                              SupportLineComponent.intervalGenerated(
                                generatedSupportLineBuilder:
                                    generatedSupportLineBuilder,
                              ),
                              DaySeparationComponent(
                                generatedDaySeparatorBuilder:
                                    generatedDaySeparatorBuilder,
                              ),
                              EventViewComponent(
                                getEventsOfDay: (day) {
                                  final _cachedAppointments =
                                      BlocProvider.of<CalendarBloc>(context)
                                          .state
                                          .hashMapDay;
                                  if (_cachedAppointments[day] == null) {
                                    List<StartDurationItem> _cacheWidget = state
                                        .appointments
                                        .where((element) {
                                          return element.start.day == day.day &&
                                              element.start.month ==
                                                  day.month &&
                                              element.start.year == day.year;
                                        })
                                        .toList()
                                        .map(
                                          (event) {
                                            return StartDurationItem(
                                              startMinuteOfDay:
                                                  event.startInMinutes,
                                              duration: event.durationInMinutes,
                                              builder: (context, itemPosition,
                                                      itemSize) =>
                                                  eventBuilder(
                                                context,
                                                itemPosition,
                                                itemSize,
                                                event,
                                              ),
                                            );
                                          },
                                        )
                                        .toList();
                                    _cachedAppointments[day] = _cacheWidget;
                                    return _cacheWidget;
                                  } else {
                                    return _cachedAppointments[day];
                                  }
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ));
      },
    );
  }
}
