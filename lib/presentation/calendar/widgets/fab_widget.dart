import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../pages/event_form_page.dart';

class InsertEventButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OpenContainer(
      openElevation: 0,
      closedElevation: 0,
      closedColor: Colors.transparent,
      closedShape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
      closedBuilder: (context, action) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: FloatingActionButton(
            onPressed: () {
              action();
            },
            backgroundColor: Palette.white,
            child: Icon(
              FontAwesomeIcons.plus,
              color: Palette.lightBlue,
            ),
          ),
        );
      },
      openBuilder: (context, action) {
        return EventFormPage();
      },
    );
  }
}
