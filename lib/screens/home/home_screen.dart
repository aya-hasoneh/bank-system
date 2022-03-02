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
                              borderRadius: BorderRadius.circular(30)),
                          child: Column(children: const [
                            SizedBox(
                              height: 50,
                            ),
                            Text(
                              "Hello John Doe!",
                              style: TextStyle(
                                  fontSize: 25, color: Color(0xff777879)),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 3),
                              child: Text(
                                "Last Login: 10:33 AM, 28.09.2017",
                                style: TextStyle(color: Color(0xffAEB1B3)),
                              ),
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
              const SizedBox(
                height: 17,
              ),
              Container(
                height: 155,
                width: 380,
                decoration: BoxDecoration(
                    gradient: const LinearGradient(
                        colors: [Color(0xff2189BC), Color(0xff0A496A)]),
                    borderRadius: BorderRadius.circular(30)),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(
                    children:  [
                    const  Text(
                        "Bank Accounts",
                        style:
                            TextStyle(color: Color(0xff85C3EC), fontSize: 16),
                      ),
                   const   Text(
                        "2 Active Accounts",
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                     const Padding(
                        padding: EdgeInsets.only(top: 15,left: 20,right: 20),
                        child: Divider(height: 5,color: Colors.white,),
                      ),
                     const  Padding(
                         padding: EdgeInsets.only(top: 10),
                         child: Text(
                          "Accounting Balance",
                          style:
                              TextStyle(color: Color(0xff85C3EC), fontSize: 18),
                      ),

                      
                       ),
                      
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    
                    children:  [ 
                    Container(
      width: 15,
      height: 15,
      decoration: const BoxDecoration(
        color: Color(0xff1ACDF0),
        shape: BoxShape.circle,
      ),),
      const SizedBox(width: 14,),
                    
                 const   Text(
                           "\$ 6,328.33",
                          style: TextStyle(color: Colors.white, fontSize: 28),
                       ),],)
                          
                          
                     
                        
                    ]
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
