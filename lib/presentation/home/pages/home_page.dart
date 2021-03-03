import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/core/routes/route.gr.dart' as route;
import 'package:flutter_app/presentation/calendar/calendar_holder.dart';
import 'package:flutter_app/presentation/calendar/utils/feedback.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthBloc, AuthState>(
      listener: (context, state) {
        state.maybeMap(
          
          orElse: () {},
          unauthenticated: (value) {
            showFeedback(context: context, message: 'Logged out successfully');
            return route.Router.navigator
                .pushReplacementNamed(route.Router.handleAuthPage);
          },
        );
      },
      child: SafeArea(
        child: CalendarHolder(),
      ),
    );
  }
}
