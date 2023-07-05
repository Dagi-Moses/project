import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';
import 'package:project/src/ui/pages/splash_screen.dart';
import 'package:project/src/ui/pages/login.dart';
import 'package:project/src/services/geofencing.dart';
Future <void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Firebase.apps.isEmpty) {
  await Firebase.initializeApp(
    
      options: DefaultFirebaseOptions.currentPlatform,
  );
  }

  runApp(
    GeoFencing(
      service: GeoFencingService(),
      child: App(),
    ),
  );
}
class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Scaffold(
        body: Login(      
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
