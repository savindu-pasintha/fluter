//all the firebase authentication function here code
import 'package:chat_app_tutorial/modal/user.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthMethod{

  //create varibale after pubspec.yamal file to save firebase_auth: ^0.18.0+1 this
  final FirebaseAuth _auth=FirebaseAuth.instance;


//condition ? true : false
  User _userFromFirebaseUser(FirebaseUser user){
     return user !=null ? User(userId: user.uid) : null;
  }


  //1-create sign in function to pass email-pass word to put to the firebase
  Future signInWithEmailAndPassword(String email,String password) async {
    //try-catch used to erro check
      try{
        AuthResult result =await _auth.signInWithEmailAndPassword(email: email,
            password: password);

        FirebaseUser firebaseUser=result.user;

        return _userFromFirebaseUser(firebaseUser);
        } catch(e){
          print(e);
       }
  }

   //2-signup function
  Future signUpWithEmailAndPassword(String email,String password)async{
    try{
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email,
          password: password);
      FirebaseUser firebaseUser=result.user;
      return _userFromFirebaseUser(firebaseUser);

    }catch(e){
      print(e.toString());
    }
  }

  //3-create reset password function
   Future resetPass(String email) async {
    try{

      return await _auth.sendPasswordResetEmail(email: email);
    }catch(e){
      print(e.toString());
    }
   }


  //4-create signout function
  Future signOut() async {
    try{

      return await _auth.signOut();
    }catch(e){
      print(e.toString());
    }
  }




}