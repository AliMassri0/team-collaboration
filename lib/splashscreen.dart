import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';


  class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds:2),
          ()=>Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (context) =>  Login()
          )
       )
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            body: Container(
              color: Colors.white,
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [

                    Image.asset('assets/images/objects.png'),

                ],
              ),
            ),
            
            ));
  }
}