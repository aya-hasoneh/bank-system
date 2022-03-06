import 'package:bank_of_america/screens/home/home_screen.dart';
import 'package:bank_of_america/shared_widget/background.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/button_all_page.dart';

class LoginWithFingerPrint extends StatelessWidget {
  const LoginWithFingerPrint({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
        Center(
          child: Padding(
            padding: const EdgeInsets.only(top: 200),
            child: Column(
              children: [
                const Text(
                  "Start Using Your",
                  style: TextStyle(color: Color(0xff2189BC), fontSize: 30),
                ),
                const Text(
                  "Fingerprint",
                  style: TextStyle(color: Color(0xff2189BC), fontSize: 30),
                ),
                const SizedBox(
                  height: 35,
                ),
                Image.asset("assets/fingerprint.png"),
                Expanded(
                  child: Container(),
                ),
                ButtonAllPage(
                    titleButton: "Not now",
                    colorButton: const [
                      Color(0xff0078A6),
                      Color(0xff16CFF3),
                    ],
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }),
                   const SizedBox(height: 30,),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
