import 'package:flutter/material.dart';

import '../../shared_widget/appbar.dart';
import '../../shared_widget/background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
   body:Stack(children: [BackgroundImage(),
   Column(children: [
     SafeArea(child: AppBarForAllPage(titleAppBar: "DASHBOARD",
     
     ) ,
     
     ),
     Stack(children: [
     Image.asset(
                "assets/back.png",
                scale: 0.8,
              ),
     ],),
   ],),
   
   ],),
      
    );
  }
}