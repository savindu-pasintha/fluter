import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

//1-widget function call in signin.dart page
Widget appBarMain(BuildContext context){
  return AppBar(
   title: Image.asset("assets/images/logo.png",height: 100,),
  );
}
/*
InputDecoration textfeildInputDecoratioFunction(String hint){
  hintText: "password",
  hintStyle: TextStyle(
  color: Colors.white,
  ),
  focusedBorder: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.orange),
  ),
  enabledBorder: UnderlineInputBorder(
  borderSide: BorderSide(color: Colors.white),
  ),
}
*/
