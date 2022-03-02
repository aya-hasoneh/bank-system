import 'package:flutter/material.dart';

import '../../shared_widget/appbar.dart';
import '../../shared_widget/background.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Column(
            children: [
              SafeArea(
                child: AppBarForAllPage(
                  titleAppBar: "DASHBOARD",
                ),
              ),
              Column(
                children: [
                  Stack(
                    children: [
                      Padding(
                        padding:
                            const EdgeInsets.only(top: 80, left: 17, right: 17),
                            
                        child: Container(
                          height: 130,
                          width: 380,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20)),
                              
                          child: Column(
                            children: const [
                              SizedBox(height: 50,),
                            Text(
                              "Hello John Doe!",
                              style: TextStyle(fontSize: 25,color: Color(0xff777879)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Text("Last Login: 10:33 AM, 28.09.2017",style: TextStyle(color: Color(0xffAEB1B3)),),
                            ),
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 150, top: 15),
                        child: Image.asset(
                          "assets/profileimage.png",
                          scale: 0.8,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
