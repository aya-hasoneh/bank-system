import 'package:flutter/material.dart';

import '../../shared_widget/background.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
        SafeArea(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            Container(
              height: 100,
              child: Image.asset(
                "assets/logo_appbar.png",
                scale: 0.8,
              ),
            ),
            const SizedBox(
              height: 29,
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  color: Colors.white,
                ),
                height: 342,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(),
                    Expanded(flex: 7, child: Container()),
                    const Text(
                      "Sign in",
                      style: TextStyle(color: Color(0xff777879), fontSize: 25),
                    ),
                    Expanded(flex: 3, child: Container()),
                    IconButton(
                      onPressed: () {},
                      icon: Image.asset("assets/close-Icon.png"),
                    )
                  ],
                ),
              ),
            ),
          ]),
        )
      ]),
    );
  }
}
