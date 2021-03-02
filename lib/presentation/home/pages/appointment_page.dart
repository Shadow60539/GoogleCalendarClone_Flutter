import 'package:date_format/date_format.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/calendar/calendar_bloc.dart';
import 'package:flutter_app/core/enums/pop_up_enum.dart';
import 'package:flutter_app/core/routes/route.gr.dart' as route;
import 'package:flutter_app/domain/calendar/appointment.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppointmentPage extends StatelessWidget {
  final Appointment event;

  const AppointmentPage({Key key, @required this.event}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    String _fromToDate() {
      if (DateTime(event.start.year, event.start.month, event.start.day)
              .compareTo(
                  DateTime(event.end.year, event.end.month, event.end.day)) ==
          0) {
        switch (event.startPeroid == event.endPeroid) {
          case true:
            return '${formatDate(event.start, [
              'DD',
              ',',
              ' ',
              'M',
              ' ',
              'd',
              '  •  ',
              'h',
              ':',
              'nn',
              '  -  '
            ])}${formatDate(event.end, ['h', ':', 'nn'])} ${event.endPeroid}';

            break;
          case false:
            return '${formatDate(event.start, [
              'DD',
              ',',
              ' ',
              'M',
              ' ',
              'd',
              '  •  ',
              'h',
              ':',
              'nn',
              ' ',
              '${event.startPeroid}'
                  '  -  '
            ])}${formatDate(event.end, ['h', ':', 'nn'])} ${event.endPeroid}';
          default:
            return '';
        }
      } else {
        return '${formatDate(event.start, [
          'DD',
          ',',
          ' ',
          'M',
          ' ',
          'd',
          ', ',
          'h',
          ':',
          'nn',
          ' ',
          '${event.startPeroid}'
              '  -  ',
          '\n',
        ])}${formatDate(event.end, [
          'DD',
          ',',
          ' ',
          'M',
          ' ',
          'd',
          ', ',
          'h',
          ':',
          'nn'
        ])} ${event.endPeroid}';
      }
    }

    return SafeArea(
      child: Scaffold(
        backgroundColor: Palette.white,
        appBar: AppBar(
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.close,
              color: Palette.black75,
            ),
            onPressed: () => Navigator.pop(context),
          ),
          actions: [
            IconButton(
              icon: Icon(
                Icons.chat_bubble_outline_outlined,
                color: Palette.black75,
              ),
              onPressed: () =>
                  route.Router.navigator.pushNamed(route.Router.chatPage),
            ),
            IconButton(
              icon: Icon(
                Icons.edit_outlined,
                color: Palette.black75,
              ),
              onPressed: () => route.Router.navigator.pushNamed(
                route.Router.updateFormPage,
                arguments: route.UpdateFormPageArguments(event: event),
              ),
            ),
            PopupMenuButton(
              onSelected: (value) {
                BlocProvider.of<CalendarBloc>(context).add(
                    CalendarEvent.deleteEvent(
                        calendarId: event.calendarId, eventId: event.eventId));
                Navigator.pop(context);
              },
              itemBuilder: (context) {
                return [
                  const PopupMenuItem(
                    value: PopEntry.delete,
                    child: Text('Delete'),
                  ),
                ];
              },
            )
          ],
        ),
        body: Column(
          children: [
            ListTile(
              leading: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: Palette.lightBlue),
              ),
              title: Text(
                event.title ?? '(No title)',
                style: const TextStyle(fontSize: 20),
              ),
              subtitle: Text(
                _fromToDate(),
                style: TextStyle(color: Palette.black75),
              ),
            ),
            const _RowBuilder(
              iconData: Icons.notifications_outlined,
              title: '30 minutes before',
            ),
            ListTile(
              leading: Container(
                height: 20,
                width: 20,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Icon(
                  Icons.calendar_today,
                  color: Palette.black75,
                ),
              ),
              title: Text(
                'Events',
                style: TextStyle(fontSize: 20, color: Palette.black75),
              ),
              subtitle: Text(
                event.creator.email,
                style: TextStyle(color: Palette.black75),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _RowBuilder extends StatelessWidget {
  const _RowBuilder({
    Key key,
    @required this.iconData,
    @required this.title,
  }) : super(key: key);

  final IconData iconData;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const SizedBox(
          width: 3,
        ),
        IconButton(
          icon: Icon(
            iconData,
            color: Palette.black75,
          ),
          onPressed: null,
        ),
        const SizedBox(
          width: 20,
        ),
        Text(
          title,
          style: TextStyle(color: Palette.black75),
        ),
      ],
    );
  }
}
