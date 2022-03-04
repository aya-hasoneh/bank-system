import 'package:flutter/material.dart';

import '../models/mymodels.dart';

class Singelton {
  static final Singelton prefrence = Singelton();

  UserInformation info = UserInformation(name: "Aya ", balance: "10000");

 List <TabBarINWalletScreen> tab =[
   TabBarINWalletScreen(name: "CREDIT CARD"),
   TabBarINWalletScreen(name: "SAVING"), 
   
 ];

  
}
