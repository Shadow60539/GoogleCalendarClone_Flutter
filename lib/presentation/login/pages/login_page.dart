import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/application/auth/auth_bloc.dart';
import 'package:flutter_app/application/auth/sign_in_form/sign_in_form_bloc.dart';
import 'package:flutter_app/application/providers/auth_provider.dart';
import 'package:flutter_app/core/enums/auth_current_enum.dart';
import 'package:flutter_app/core/routes/route.gr.dart' as route;
import 'package:flutter_app/presentation/calendar/utils/feedback.dart';
import 'package:flutter_app/presentation/core/palette.dart';
import 'package:flutter_app/presentation/core/widgets/alreadyhaveanaccount.dart';
import 'package:flutter_app/presentation/core/widgets/rounded_button.dart';
import 'package:flutter_app/presentation/core/widgets/rounded_input_field.dart';
import 'package:flutter_app/presentation/core/widgets/rounded_password_field.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../injection.dart';

class HandleAuthPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final AuthProvider _authProvider = Provider.of<AuthProvider>(context);
    Widget _pageDecider() {
      switch (_authProvider.currentPage) {
        case CURRENT_PAGE.login:
          return LoginPage();

          break;
        case CURRENT_PAGE.signUp:
          return SignUpPage();

          break;
        default:
          return LoginPage();
      }
    }

    return BlocProvider(
        create: (context) => getIt<SignInFormBloc>(),
        child: BlocConsumer<SignInFormBloc, SignInFormState>(
          listener: (context, state) {
            state.authFailureOrSuccessOption.fold(
              () {},
              (either) {
                either.fold(
                  (failure) {
                    showFeedback(
                      context: context,
                      message: failure.map(
                        cancelledByUser: (_) => 'Cancelled',
                        serverError: (_) => 'Server error',
                        emailAlreadyInUse: (_) => 'Email already in use',
                        invalidEmailAndPasswordCombination: (_) =>
                            'Invalid email and password combination',
                      ),
                    );
                  },
                  (_) {
                    showFeedback(context: context, message: 'Welcome back' );

                    route.Router.navigator
                        .pushReplacementNamed(route.Router.homePage);
                    context
                        .bloc<AuthBloc>()
                        .add(const AuthEvent.authCheckRequested());
                  },
                );
              },
            );
          },
          builder: (context, state) {
            return Form(
              autovalidate: state.showErrorMessages,
              child: SafeArea(
                child: PageTransitionSwitcher(
                  duration: const Duration(milliseconds: 600),
                  transitionBuilder:
                      (child, primaryAnimation, secondaryAnimation) {
                    return SharedAxisTransition(
                      animation: primaryAnimation,
                      secondaryAnimation: secondaryAnimation,
                      transitionType: SharedAxisTransitionType.vertical,
                      child: child,
                    );
                  },
                  child: _pageDecider(),
                ),
              ),
            );
          },
        ));
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Palette.white,
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Text(
                'Login',
                style: TextStyle(
                  fontSize: 30,
                  color: Palette.darkBlue,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SvgPicture.asset(
                "assets/login.svg",
                height: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              RoundedPasswordField(
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              if (context.bloc<SignInFormBloc>().state.isSubmitting) ...[
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: LinearProgressIndicator(
                    value: null,
                    valueColor: AlwaysStoppedAnimation<Color>(Palette.darkBlue),
                  ),
                ),
              ],
              RoundedButton(
                text: "LOGIN",
                press: () => context.bloc<SignInFormBloc>().add(
                    const SignInFormEvent.signInWithEmailAndPasswordPressed()),
              ),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Provider.of<AuthProvider>(context, listen: false)
                      .updateCurrentPage(CURRENT_PAGE.signUp);
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/google-plus.svg",
                    press: () => context
                        .bloc<SignInFormBloc>()
                        .add(const SignInFormEvent.signInWithGooglePressed()),
                  ),
                ],
              )
              // const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class SignUpPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        backgroundColor: Palette.white,
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'SignUp',
                style: TextStyle(
                  fontSize: 30,
                  color: Palette.darkBlue,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              SvgPicture.asset(
                "assets/signup.svg",
                height: 100,
              ),
              const SizedBox(
                height: 50,
              ),
              RoundedInputField(
                hintText: "Your Email",
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.emailChanged(value)),
                validator: (_) => context
                    .bloc<SignInFormBloc>()
                    .state
                    .emailAddress
                    .value
                    .fold(
                      (f) => f.maybeMap(
                        invalidEmail: (_) => 'Invalid email',
                        orElse: () => null,
                      ),
                      (_) => null,
                    ),
              ),
              RoundedPasswordField(
                onChanged: (value) => context
                    .bloc<SignInFormBloc>()
                    .add(SignInFormEvent.passwordChanged(value)),
                validator: (_) =>
                    context.bloc<SignInFormBloc>().state.password.value.fold(
                          (f) => f.maybeMap(
                            shortPassword: (_) => 'Short password',
                            orElse: () => null,
                          ),
                          (_) => null,
                        ),
              ),
              if (context.bloc<SignInFormBloc>().state.isSubmitting) ...[
                const SizedBox(height: 8),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: LinearProgressIndicator(
                    value: null,
                    valueColor: AlwaysStoppedAnimation<Color>(Palette.darkBlue),
                  ),
                ),
              ],
              RoundedButton(
                text: "SIGNUP",
                press: () => context.bloc<SignInFormBloc>().add(
                    const SignInFormEvent
                        .registerWithEmailAndPasswordPressed()),
              ),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Provider.of<AuthProvider>(context, listen: false)
                      .updateCurrentPage(CURRENT_PAGE.login);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class OrDivider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Container(
      margin: EdgeInsets.symmetric(vertical: size.height * 0.02),
      width: size.width * 0.8,
      child: Row(
        children: <Widget>[
          buildDivider(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              "OR",
              style: TextStyle(
                color: Palette.darkBlue,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          buildDivider(),
        ],
      ),
    );
  }

  Expanded buildDivider() {
    return const Expanded(
      child: Divider(
        color: Color(0xFFD9D9D9),
        height: 1.5,
      ),
    );
  }
}

class SocalIcon extends StatelessWidget {
  final String iconSrc;
  final VoidCallback press;
  const SocalIcon({
    Key key,
    this.iconSrc,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(
            width: 2,
            color: Palette.darkBlue,
          ),
          shape: BoxShape.circle,
        ),
        child: SvgPicture.asset(
          iconSrc,
          height: 20,
          width: 20,
        ),
      ),
    );
  }
}
