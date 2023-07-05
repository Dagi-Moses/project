import 'package:flutter/material.dart';
import 'package:project/src/services/authentication.dart';
import 'package:project/src/ui/pages/attendance_recorder.dart';
import 'package:project/src/ui/pages/dashboard.dart';
import 'package:project/src/ui/pages/homepage.dart';
import 'package:project/src/ui/pages/login.dart';
import 'package:project/src/ui/pages/profile_page.dart';

import 'package:project/src/ui/pages/splash_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: SplashScreenWidget(      
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
