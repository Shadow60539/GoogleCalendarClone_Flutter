import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/application/calendar/event_form/event_form_bloc.dart';
import 'package:flutter_app/core/routes/route.gr.dart' as route;
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/injection.dart';
import 'package:flutter_app/presentation/calendar/utils/feedback.dart';
import 'package:flutter_app/presentation/calendar/utils/minute_of_day_to_hour.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class UpdateFormPage extends StatefulWidget {
  final Appointment event;

  const UpdateFormPage({Key key, this.event}) : super(key: key);
  @override
  _UpdateFormPageState createState() => _UpdateFormPageState();
}

class _UpdateFormPageState extends State<UpdateFormPage> {
  String _formatedDate(DateTime day) =>
      formatDate(day, ['D', ',', ' ', 'M', ' ', 'd', ' ', 'yyyy']);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<EventFormBloc>()
        ..add(
          EventFormEvent.updateEvent(
              title: widget.event.title,
              start: widget.event.start,
              end: widget.event.end,
              event: widget.event.eventId),
        ),
      child: BlocConsumer<EventFormBloc, EventFormState>(
        listener: (context, state) {
          state.calFailureOrSuccessOption.fold(
            () => null,
            (a) => a.fold(
              (l) => showFeedback(
                  context: context,
                  message: l.map(
                    serverError: (value) => 'SERVER ERROR',
                    startAndEndDateError: (value) =>
                        'End Date should be greater than Start Date',
                    invalidCredentialsError: (value) =>
                        'Unauthenticated Error! logout and login after some time',
                  )),
              (_) {
                showFeedback(
                  context: context,
                  message: 'Updating Event',
                );
                BlocProvider.of<CalendarBloc>(context)
                    .add(const CalendarEvent.getGoogleEvents());
                route.Router.navigator
                    .pushReplacementNamed(route.Router.calendarHomePage);
                BlocProvider.of<CalendarBloc>(context)
                    .add(CalendarEvent.moveToSpecificDay(state.startDate));
              },
            ),
          );
        },
        builder: (context, state) {
          return Form(
            autovalidate: state.showErrorMessages,
            child: SafeArea(
              child: Scaffold(
                // backgroundColor: Palette.white,
                appBar: AppBar(
                  leading: IconButton(
                      icon: Icon(
                        Icons.close,
                        color: Palette.greyWhite.withOpacity(0.5),
                      ),
                      onPressed: () => Navigator.pop(context)),
                  elevation: 0,
                  backgroundColor: Colors.transparent,
                  actions: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 10),
                      child: RaisedButton(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5)),
                        color: Palette.lightBlue,
                        onPressed: () {
                          context
                              .bloc<EventFormBloc>()
                              .add(const EventFormEvent.updatePressed());
                        },
                        child: Text(
                          'Update',
                          style: TextStyle(color: Palette.greyWhite),
                        ),
                      ),
                    )
                  ],
                ),
                body: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextFormField(
                        initialValue: widget.event.title,
                        cursorHeight: 30,
                        onChanged: (value) => context
                            .bloc<EventFormBloc>()
                            .add(EventFormEvent.titleChanged(value)),
                        validator: (value) => context
                            .bloc<EventFormBloc>()
                            .state
                            .title
                            .value
                            .fold(
                              (l) => l.maybeMap(
                                orElse: () => null,
                                multiline: (value) => 'Invalid Title',
                              ),
                              (r) => null,
                            ),
                        cursorColor: Palette.greyWhite.withOpacity(0.2),
                        style:
                            TextStyle(fontSize: 25, color: Palette.greyWhite),
                        decoration: InputDecoration(
                            hintText: 'Add title',
                            errorStyle: TextStyle(color: Palette.lightBlue),
                            border: const OutlineInputBorder(
                                borderSide: BorderSide.none),
                            hintStyle: const TextStyle(
                                fontSize: 25, color: Colors.grey),
                            contentPadding:
                                const EdgeInsets.only(left: 60, bottom: 20)),
                      ),
                      _Divider(),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20)
                                .copyWith(top: 20),
                            child: Row(
                              children: [
                                Icon(
                                  FontAwesomeIcons.clock,
                                  color: Palette.greyWhite.withOpacity(0.5),
                                  size: 18,
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Text(
                                  'Timings',
                                  style: TextStyle(
                                      color: Palette.greyWhite.withOpacity(0.5), fontSize: 18),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 20, left: 52, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    builder: (context, child) => Theme(
                                      data: ThemeData.dark(),
                                      child: child,
                                    ),
                                    initialDate: state.startDate,
                                    firstDate: widget.event.start,
                                    lastDate: DateTime(2100, 12, 31),
                                  ).then((value) {
                                    if (value != null) {
                                      context.bloc<EventFormBloc>().add(
                                          EventFormEvent.startDateChanged(
                                              value));
                                    } else {}
                                  });
                                },
                                child: Text(
                                  _formatedDate(state.startDate),
                                  style: TextStyle(
                                      color: Palette.greyWhite.withOpacity(0.5), fontSize: 14),
                                )),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Palette.greyWhite.withOpacity(0.5))),
                                onPressed: () {
                                  showTimePicker(
                                    context: context,
                                    builder: (context, child) => Theme(
                                      data: ThemeData.dark(),
                                      child: child,
                                    ),
                                    initialTime:
                                        TimeOfDay.fromDateTime(state.startDate),
                                  ).then((value) {
                                    if (value != null) {
                                      context.bloc<EventFormBloc>().add(
                                          EventFormEvent.startTimeChanged(
                                              value));
                                    } else {}
                                  });
                                },
                                child:
                                    Text(timeHourMinuteString(state.startDate)))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 52, right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            TextButton(
                                onPressed: () {
                                  showDatePicker(
                                    context: context,
                                    builder: (context, child) => Theme(
                                      data: ThemeData.dark(),
                                      child: child,
                                    ),
                                    initialDate: state.endDate,
                                    firstDate: state.startDate,
                                    lastDate: DateTime(2100, 12, 31),
                                  ).then((value) {
                                    if (value != null) {
                                      context.bloc<EventFormBloc>().add(
                                          EventFormEvent.endDateChanged(value));
                                    } else {}
                                  });
                                },
                                child: Text(
                                  _formatedDate(state.endDate),
                                  style: TextStyle(
                                      color: Palette.greyWhite.withOpacity(0.5), fontSize: 14),
                                )),
                            TextButton(
                                style: ButtonStyle(
                                    foregroundColor: MaterialStateProperty.all(
                                        Palette.greyWhite.withOpacity(0.5))),
                                onPressed: () {
                                  showTimePicker(
                                    context: context,
                                    builder: (context, child) => Theme(
                                      data: ThemeData.dark(),
                                      child: child,
                                    ),
                                    initialTime:
                                        TimeOfDay.fromDateTime(state.endDate),
                                  ).then((value) {
                                    if (value != null) {
                                      context.bloc<EventFormBloc>().add(
                                          EventFormEvent.endtTimeChanged(
                                              value));
                                    } else {}
                                  });
                                },
                                child:
                                    Text(timeHourMinuteString(state.endDate)))
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _Divider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Divider(
      color: Palette.greyWhite,
      thickness: 0.1,
    );
  }
}
