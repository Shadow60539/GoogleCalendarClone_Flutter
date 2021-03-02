import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/app_widget.dart';
import 'package:flutter_config/flutter_config.dart';
import 'package:injectable/injectable.dart';

import 'injection.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await FlutterConfig.loadEnvVariables();

  await Firebase.initializeApp();

  configureInjection(Environment.prod);
  runApp(AppWidget());
}
