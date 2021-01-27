import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:syed/helpers/config_size.dart';
import 'package:syed/helpers/theme.dart';
import 'package:syed/routes.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.white,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness:
          Brightness.light, //status bar brightness//status barIcon Brightness
    ));
    return MaterialApp(
      theme: theme(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: routes,
    );
  }
}
