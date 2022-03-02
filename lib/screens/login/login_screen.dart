import 'package:flutter/material.dart';

import '../../shared_widget/background.dart';
import '../../shared_widget/button.dart';
import 'login_bloc.dart';
import 'widget/card.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var bloc = LoginBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
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
              padding: EdgeInsets.all(20),
              child: myCard(
                context,
              ),
            ),
          ]),
        )
      ]),
    );
  }

  Widget myCard(
    BuildContext context,
  ) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: Colors.white,
        ),
        height: 420,
        child: Column(
          children: [
            Row(
              children: [
                // Container(width: 100,),
                Expanded(flex: 5, child: Container()),
                const Text(
                  "Sign in",
                  style: TextStyle(color: Color(0xff777879), fontSize: 30),
                ),
                Expanded(flex: 3, child: Container()),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Image.asset(
                    "assets/close-Icon.png",
                    width: 100,
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27),
              child: TextField(
                decoration: const InputDecoration(
                    label: Text(
                      "PRO ID",
                      style: TextStyle(color: Color(0xff707273), fontSize: 16),
                    ),
                    hintText: "Enter your bank ID",
                    hintStyle:
                        TextStyle(color: Color(0xffAEB1B3), fontSize: 13)),
                keyboardType: TextInputType.number,
                controller: bloc.id,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 27, right: 27),
              child: TextField(
                obscureText: true,
                obscuringCharacter: '•',
                decoration: const InputDecoration(
                    border: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    label: Text(
                      "PASSWORD",
                      style: TextStyle(color: Color(0xff707273), fontSize: 16),
                    ),
                    hintText: "......",
                    hintStyle: TextStyle(
                        color: Color(0xffAEB1B3),
                        fontSize: 30,
                        fontWeight: FontWeight.bold)),
                keyboardType: TextInputType.multiline,
                controller: bloc.password,
              ),
            ),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children:[ Row(
                  children: [
                    Checkbox(
                      value: bloc.rememberMyId,
                      onChanged: (value) {
                        bloc.rememberMyId = value ?? false;
                        setState(() {
                          
                        });
                      },
                    ),
                    const Text(
                      "Remember my ID for future logins.",
                      style: TextStyle(color: Color(0xff95989A), fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: bloc.useFingerPrintNextTime,
                      onChanged: (value) {
                        bloc.useFingerPrintNextTime = value ?? false;
                        setState(() {
                          
                        });
                      },
                    ),
                    const Text(
                      "Use fingerprint recognition next time.",
                      style: TextStyle(color: Color(0xff95989A), fontSize: 14),
                    ),
                  ],
                ),
                   ],   ),
            ),
         //   CustomButton(textButton: "Sign in",textColor: Colors.white,buttonBackGroundColor: Colors.blue,onTap: (){},),
          ],
        ),
      ),
      
    );
  }
}
