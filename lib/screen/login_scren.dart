import 'package:flutter/material.dart';
import 'package:secure_storage/screen/home_screen.dart';
import 'package:secure_storage/session_controller.dart';

class LoginScren extends StatefulWidget {
  const LoginScren({super.key});

  @override
  State<LoginScren> createState() => _LoginScrenState();
}

class _LoginScrenState extends State<LoginScren> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: ElevatedButton(onPressed: (){

              final session  = SessionController.instance;


    session.setSession('23', '304823904', DateTime.timestamp());
    

              Navigator.push(context, MaterialPageRoute(builder: (context)=> HomeScreen()));
        }, child: Text('Login'))
      ),
    );
  }
}