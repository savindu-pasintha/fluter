import 'package:chat_app_tutorial/views/signin.dart';
import 'package:chat_app_tutorial/views/signup.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,//change the appbar color
        scaffoldBackgroundColor:Colors.white10,//change scaffold bgcolor all

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),

      //first time visible page
      home: SignUp(),//call signin.dart page
    );
  }
}

