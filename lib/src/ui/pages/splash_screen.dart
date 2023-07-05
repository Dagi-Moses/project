import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:project/src/services/authentication.dart';
import 'package:project/src/ui/constants/colors.dart';
import 'package:project/src/ui/pages/homepage.dart';
import 'package:project/src/ui/pages/login.dart';
import 'package:firebase_auth/firebase_auth.dart';


class SplashScreenWidget extends StatefulWidget {
  SplashScreenWidget({super.key, });

 

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreenWidget> {
   FirebaseAuth auth = FirebaseAuth.instance;
 


  void initState() {
    super.initState();


    Future.delayed(Duration(seconds: 2), () async {
      
          if (auth.currentUser != null) {
           // _userId = widget.user.uid;
            Navigator.of(context).pushReplacement( MaterialPageRoute(
              builder: (BuildContext context) => HomePage()));
          }

         else{
         
          
         
           Navigator.of(context).pushReplacement( MaterialPageRoute(
              builder: (BuildContext context) => Login()));
         }

        
       
  });
    
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: const [splashScreenColorBottom, splashScreenColorTop],
            begin: Alignment.bottomCenter,
            end: Alignment.topRight,
          ),
        ),
        child: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              "assets/logo/logo-white.png",
              height: 150,
            ),
            Container(
              padding: const EdgeInsets.only(top: 80),
              child: SpinKitWave(
                color: Colors.white,
                size: 30.0,
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
