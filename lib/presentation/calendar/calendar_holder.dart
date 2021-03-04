import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/core/enums/calendar_entry_enum.dart';
import 'package:flutter_app/core/enums/pop_up_enum.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_day_page.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_month_page.dart';
import 'package:flutter_app/presentation/calendar/pages/calendar_week_page.dart';
import 'package:flutter_app/presentation/calendar/utils/feedback.dart';
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
          (a) => null,
        );
        state.failureOrSuccess.fold(
          () => null,
          (a) => a.fold(
              (l) => showFeedback(
                  context: context,
                  message: l.maybeMap(
                    orElse: () => null,
                    serverError: (value) =>
                        'Something went wrong! Please try again',
                    invalidCredentialsError: (value) =>
                        'Unauthenticated Error! logout and login after some time',
                  )),
              (r) => showFeedback(context: context, message: "Success")),
        );
      },
      builder: (context, state) {
        return Stack(
          children: [
            Scaffold(
                key: _scaffoldKey,
                drawer: Drawer(
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
                backgroundColor: Palette.white,
                floatingActionButton: InsertEventButton(),
                appBar: AppBar(
                  leading: IconButton(
                    icon: Icon(
                      Icons.menu,
                      color: Palette.greyWhite.withOpacity(0.5),
                    ),
                    onPressed: () {
                      _scaffoldKey.currentState.openDrawer();
                    },
                  ),
                  title: AnimatedSwitcher(
                    layoutBuilder: (currentChild, previousChildren) {
                      return Align(
                        alignment: Alignment.centerLeft,
                        child: currentChild,
                      );
                    },
                    duration: const Duration(milliseconds: 300),
                    switchInCurve: Curves.ease,
                    switchOutCurve: Curves.ease,
                    transitionBuilder: (child, animation) {
                      return FadeTransition(
                        opacity: animation,
                        child: SlideTransition(
                            position:
                                Tween(begin: Offset(0, 0.5), end: Offset.zero)
                                    .animate(animation),
                            child: child),
                      );
                    },
                    child: Text(
                      formatDate(state.focusedDay, ['MM']),
                      key: ValueKey(formatDate(state.focusedDay, ['MM'])),
                      style: TextStyle(
                          color: Palette.bluishWhite,
                          fontWeight: FontWeight.w300),
                    ),
                  ),
                  elevation: 0,
                  actions: [
                    IconButton(
                        icon: Icon(
                          Icons.refresh,
                          color: Palette.greyWhite.withOpacity(0.5),
                        ),
                        onPressed: () {
                          showFeedback(
                              context: context, message: 'Refreshing events');
                          context
                              .bloc<CalendarBloc>()
                              .add(const CalendarEvent.getGoogleEvents());
                        }),
                    IconButton(
                      icon: Icon(
                        Icons.today,
                        color: Palette.greyWhite.withOpacity(0.5),
                      ),
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
                      icon: Icon(
                        Icons.more_vert,
                        color: Palette.greyWhite.withOpacity(0.5),
                      ),
                      padding: const EdgeInsets.all(0),
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(3),
                      ),
                      offset: Offset(100, 100),
                      onSelected: (value) {
                        BlocProvider.of<AuthBloc>(context)
                            .add(const AuthEvent.signedOut());
                      },
                      itemBuilder: (context) {
                        return [
                          PopupMenuItem(
                            height: 30,
                            value: PopEntry.logout,
                            child: Text(
                              'Logout',
                              style: TextStyle(color: Palette.greyWhite),
                            ),
                          ),
                        ];
                      },
                    )
                  ],
                ),
                body: _calendarView(state.calendarEntry)),
            state.isLoading.fold(() => const SizedBox.shrink(),
                (a) => const Center(child: CupertinoActivityIndicator()))
          ],
        );
      },
    );
  }
}
