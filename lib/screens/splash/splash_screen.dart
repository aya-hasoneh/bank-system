import 'package:bank_of_america/shared_widget/button.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/background.dart';
import '../login/login_screen.dart';
import '../login/login_finger_print_screen.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
        SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 128,
              ),
              Center(child: Image.asset("assets/logo.png")),
              const SizedBox(
                height: 100,
              ),
              CustomButton(
                buttonBackGroundColor: (Colors.white),
                textButton: "Sign in with your account",
                textColor: const Color(0xff156FB2),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginPage()),
                  );
                },
              ),
              CustomButton(
                textColor: Colors.white,
                buttonBackGroundColor: const Color(0xff0B4C6E),
                textButton: "Sign in with Finger print",
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) =>  LoginWithFingerPrint()),
                  );
                },
              ),
            ],
          ),
        ),
      ]),
    );
  }
}
