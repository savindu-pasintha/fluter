import 'package:chat_app_tutorial/widgets/widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}


class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
       appBar: appBarMain(context),//call in widget.dart file function

       body: SingleChildScrollView(
         child: Container(

           padding: EdgeInsets.symmetric(horizontal: 50),

           child: Container(
             child: Column(
               children: <Widget>[

                 //1-email textfeild
                 TextField(
                   cursorColor: Colors.blue,
                   decoration: InputDecoration(hintText: "email",
                       hintStyle: TextStyle(
                         color: Colors.white,
                         fontSize: 25,
                       ),
                     focusedBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.green)
                     ),
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                     ),
                   ),
                   style: TextStyle(
                     color: Colors.yellowAccent,
                     fontSize: 25,
                   ),
                 ),

                 //2-password textfeild
                 TextField(
                   decoration: InputDecoration(
                     hintText: "password",
                     hintStyle: TextStyle(
                       color: Colors.white,
                       fontSize: 25,
                        ),
                     focusedBorder: UnderlineInputBorder(
                         borderSide: BorderSide(color: Colors.orange),
                         ),
                     enabledBorder: UnderlineInputBorder(
                       borderSide: BorderSide(color: Colors.white),
                        ),
                     ),

                   style: TextStyle(
                     color: Colors.lightGreenAccent,
                     fontSize: 25,
                   ),
                 ),


                 //get space ekk gann
                 SizedBox(height: 20,),


                 //3-frogot password
                Container(
                  alignment: Alignment.centerRight,
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                     child:Text("Are you frogot passwprd ?",
                       style: TextStyle(
                           fontSize: 16,
                           color: Colors.red,
                           decorationColor:Colors.white,
                           decoration: TextDecoration.underline,
                           fontStyle: FontStyle.italic,
                           fontWeight: FontWeight.w400,
                       ),
                     ),
                ),


               // space ekk gann
               SizedBox(height: 50,),


                 //button registration and login
                Container(
                  width: MediaQuery.of(context).size.width,
                  padding: EdgeInsets.symmetric(vertical: 28),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    /*
                    gradient:LinearGradient(
                        colors:[const Color(0xff087EF0),const Color(0xff2A75BC)
                        ],
                    ),
                    */
                    color: Colors.yellow,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("Sign In",
                      style: TextStyle(
                         color: Colors.black,
                         fontSize: 25,
                         fontWeight: FontWeight.bold,
                         ),
                      ),
                ),


                 //get space ekk gann
                 SizedBox(height: 50,),


                 //button registration and login
                 Container(
                   width: MediaQuery.of(context).size.width,
                   padding: EdgeInsets.symmetric(vertical: 28),
                   alignment: Alignment.center,
                   decoration: BoxDecoration(
                     gradient: LinearGradient(
                       colors: [
                         const Color(0xFF3366FF),
                         const Color(0xFF00CCFF),
                       ],
                       begin: const FractionalOffset(0.0, 0.0),
                       end: const FractionalOffset(1.0, 0.0),
                       stops: [0.0, 1.0],
                       tileMode: TileMode.clamp,
                     ),
                    // color: Colors.yellow,
                     borderRadius: BorderRadius.circular(50),
                   ),
                   child: Text("sign in with Google",
                     style: TextStyle(
                       color: Colors.black,
                       fontSize: 25,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                     ),
                   ),
                 ),

              SizedBox(height: 25,),

             Row(
               mainAxisAlignment: MainAxisAlignment.end,//siyalum item x line ekt gann
               children: <Widget>[

                 Container(
                   child: Text("Dont't have Account ?",
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 15,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                     ),
                   ),
                 ),

                 Container(
                   child: Text(" Register now",
                     style: TextStyle(
                       color: Colors.orange,
                       fontSize: 18,
                       fontWeight: FontWeight.bold,
                       fontStyle: FontStyle.italic,
                       decoration: TextDecoration.underline,
                     ),
                   ),
                 ),

               ],
             ),


             SizedBox(height: 20,),


               ],
             ),
           ),
         ),
       ),
    );
  }
}
