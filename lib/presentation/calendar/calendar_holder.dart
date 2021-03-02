import 'package:date_format/date_format.dart';
import 'package:flushbar/flushbar_helper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_app/core/enums/pop_up_enum.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_day_page.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_month_page.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_week_page.dart';
import 'package:flutter_app/presentation/calendar/widgets/drawer.dart';
import 'package:flutter_app/presentation/calendar/widgets/fab_widget.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'pages/calendar_threedays_page.dart';

class CalendarHolder extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    Widget _calendarView(CalendarEntry entry) {
      switch (entry) {
        case CalendarEntry.day:
          return CalendarDayPage();

          break;
        case CalendarEntry.threeDays:
          return CalendarThreeDayPage();

          break;
        case CalendarEntry.week:
          return CalendarWeekPage();

          break;
        case CalendarEntry.month:
          return CalendarMonthPage();

          break;
        default:
          return CalendarDayPage();
      }
    }

    return BlocConsumer<CalendarBloc, CalendarState>(
      listener: (context, state) {
        state.isLoading.fold(
          () => null,
          (a) => FlushbarHelper.createInformation(
                  message: 'Refreshing Events',
                  duration: const Duration(seconds: 1))
              .show(context),
        );
        state.failureOrSuccess.fold(
          () => null,
          (a) => a.fold(
            (l) => FlushbarHelper.createError(
                message: l.maybeMap(
              orElse: () => null,
              serverError: (value) => 'Something went wrong! Please try again',
              invalidCredentialsError: (value) => 'Unauthenticated Error! logout and login after some time',
            )).show(context),
            (r) =>
                FlushbarHelper.createSuccess(message: 'Success').show(context),
          ),
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
                key: _scaffoldKey,
                drawer: Drawer(
                  child: DecoratedBox(
                    decoration: BoxDecoration(color: Palette.white),
                    child: Padding(
                      padding: const EdgeInsets.only(top: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: CalendarEntry.values
                            .map((entry) => DrawerChild(
                                  model: state,
                                  calendarEntry: entry,
                                ))
                            .toList(),
                      ),
                    ),
                  ),
                ),
                backgroundColor: Palette.white,
                floatingActionButton: InsertEventButton(),
                appBar: AppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Palette.black75,
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                  title: Text(
                    formatDate(state.focusedDay, ['MM']),
                    style: TextStyle(
                        color: Palette.black75, fontWeight: FontWeight.w300),
                  ),
                  elevation: 0,
                  actions: [
                    IconButton(
                        icon: Icon(
                          Icons.refresh,
                          color: Palette.black75,
                        ),
                        onPressed: () {
                          context
                              .bloc<CalendarBloc>()
                              .add(const CalendarEvent.getGoogleEvents());
                        }),
                    IconButton(
                      icon: Icon(Icons.today, color: Palette.black75),
                      onPressed: () {
                        BlocProvider.of<CalendarBloc>(context)
                            .add(const CalendarEvent.moveToTodayForDay());
                        BlocProvider.of<CalendarBloc>(context)
                            .add(const CalendarEvent.moveToTodayForThreeDays());
                        BlocProvider.of<CalendarBloc>(context)
                            .add(const CalendarEvent.moveToTodayForWeek());
                        BlocProvider.of<CalendarBloc>(context)
                            .add(const CalendarEvent.moveToTodayForMonth());
                      },
                    ),
                    PopupMenuButton(
                      onSelected: (value) {
                        BlocProvider.of<AuthBloc>(context)
                            .add(const AuthEvent.signedOut());
                      },
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                            value: PopEntry.logout,
                            child: Text('Logout'),
                          ),
                        ];
                      },
                    )
                  ],
                ),
                body: _calendarView(state.calendarEntry)),
            state.isLoading.fold(() => const SizedBox.shrink(),
                (a) => const Center(child: CircularProgressIndicator()))
          ],
        );
      },
    );
  }
}
