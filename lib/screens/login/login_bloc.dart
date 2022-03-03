import 'package:bank_of_america/screens/home/home_screen.dart';

import 'package:flutter/material.dart';

class LoginBloc {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMyId =false;
  bool useFingerPrintNextTime =false;
  
String errorMsgID ="";
String errorMsgPassword ="";
   validationID (BuildContext context){
   if(id.text.isEmpty || id.text.length<7 ){
    errorMsgID ="Plesase Enter Your Id";}
    else {
  errorMsgID ="";
      Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const HomePage()),
                   );
   }
    
  }
  validatePassword (BuildContext context){

    if(password.text.isEmpty){
errorMsgID ="Plesase Enter Your Password";
    }
    else{
       errorMsgPassword ="";
      Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => const HomePage()),
                   );
    }
  }
}