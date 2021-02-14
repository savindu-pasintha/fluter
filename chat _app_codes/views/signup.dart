import 'package:chat_app_tutorial/widgets/widget.dart';
import 'package:flutter/material.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {

  //this variable used to form widget handle in textformfeild
  /*    ok liynn  form eke pthn gnn thn             key:formKey,   */
 final formKey = GlabalKey<FormState>();

  /*controlers create to get textfeilf values to put firebase */
  TextEditingController usernameTextEditingController=new TextEditingController();
  TextEditingController emailTextEditingController=new TextEditingController();
  TextEditingController passwordTextEditingController=new TextEditingController();
//then oy clz obj ek liynn Textfeild ptn gann eke udama me vidiyt
 /*     controller: usernameTextEditingController,    */


     //sign up textform felid validate function
     signMeUP(){
      if(formKey.currentSate.validaet()){


     }



  @override
  Widget build(BuildContext context) {


    return Scaffold(

      appBar: appBarMain(context),//app bar to call widhet function



      body: SingleChildScrollView(
        child: Container(

          padding: EdgeInsets.symmetric(horizontal: 50),

          child: Container(
            child: Column(
              children: <Widget>[


                Form(
                  key:formKey,

                  child: Column(
                    children: <Widget>[

                      TextFormField(
                        validator: (val){
                          return "This will never work";
                        },
                        //call controler
                        controller: usernameTextEditingController,

                        cursorColor: Colors.blue,
                        decoration: InputDecoration(hintText: "User name",
                          hintStyle: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          focusedBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.yellowAccent)
                          ),
                          enabledBorder: UnderlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                          ),
                        ),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 25,
                        ),
                      ),


                      //1-email textfeild
                      TextFormField(
                        //call controler
                        controller: emailTextEditingController,

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
                      TextFormField(
                        //call controler
                        controller: passwordTextEditingController,

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

                    ],
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
                //container kiyn ek wrappkrnn widget ekkt build ek ub clik krl wiget kiyn ek markrnn GestureDetector
                GestureDetector(
                  onTap: (){
                    signMeUP();//call function
                  },

                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: EdgeInsets.symmetric(vertical: 28),
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      gradient:LinearGradient(
                        colors:[const Color(0xff001EF4),const Color(0xff2A75BC)],
                      ),
                      borderRadius: BorderRadius.circular(50),
                    ),
                    child: Text("Sign Up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
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
                    color: Colors.lightGreenAccent,
                    borderRadius: BorderRadius.circular(50),
                  ),
                  child: Text("sign Up with Google",
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
                      child: Text("Allready have a Account ?",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ),

                    Container(
                      child: Text(" Sign-In Now",
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
