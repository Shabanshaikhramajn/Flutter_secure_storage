import 'dart:async';

import 'package:flutter/material.dart';
import 'package:secure_storage/screen/home_screen.dart';
import 'package:secure_storage/screen/login_scren.dart';
import 'package:secure_storage/session_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
   
    super.initState();


      final session =  SessionController.instance;
    if(session.userId == null){
                   Timer(const Duration(seconds: 2), ()=>
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> LoginScren()), (route)=> false)
    );
    } else{

  Timer(const Duration(seconds: 2), ()=>
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context)=> HomeScreen()), (route)=> false)
    );

    }



   
  }


  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Text('splash screen', style: TextStyle(fontSize: 50),),
      ),
    );
  }
}