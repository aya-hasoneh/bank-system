import 'dart:async';

import 'package:bank_of_america/screens/login/login_finger_print_screen.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/background.dart';
import '../home/home_screen.dart';
import 'login_bloc.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage>
    with SingleTickerProviderStateMixin {
  var bloc = LoginBloc();

  @override
  void initState() {
    bloc.readRemeberMyID().then((value) {
      bloc.rememberMyId = value != "" ? true : false;
      bloc.id.text = value;
        bloc.password.text = value;
      setState(() {});
    });
    // bloc.readRemeberMyID().then((value) {
    //   bloc.rememberMyId = value != "" ? true : false;
    //   bloc.password.text = value;
    //   setState(() {});
    // });
    bloc.readUseFingerPrint().then((value) {
      bloc.useFingerPrintNextTime = value != "" ? true : false;
      Timer(
        Duration(seconds: 0),
        ()
     { Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => bloc.useFingerPrintNextTime == true
                ? LoginWithFingerPrint()
                : LoginPage()),
        ); });
        setState(() {
          
        });
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
        SingleChildScrollView(
          child: SafeArea(
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
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
                    child: myCard(
                      context,
                    ),
                  ),
                ]),
          ),
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
        height: 450,
        child: Column(
          children: [
            const SizedBox(
              height: 22,
            ),
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
            Form(
                key: bloc.formKey,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 27, right: 27),
                      child: TextFormField(
                        decoration: const InputDecoration(
                            label: Text(
                              "PRO ID",
                              style: TextStyle(
                                  color: Color(0xff707273), fontSize: 16),
                            ),
                            hintText: "Enter your bank ID",
                            hintStyle: TextStyle(
                                color: Color(0xffAEB1B3), fontSize: 13)),
                        keyboardType: TextInputType.number,
                        controller: bloc.id,
                        validator: (value) {
                          if (value!.isEmpty || value.length < 7) {
                            return "The ID Number At Least 7 Number";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 27, right: 27),
                      child: TextFormField(
                        obscureText: true,
                        obscuringCharacter: '•',
                        decoration: const InputDecoration(
                            border: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.grey)),
                            label: Text(
                              "PASSWORD",
                              style: TextStyle(
                                  color: Color(0xff707273), fontSize: 16),
                            ),
                            hintText: "......",
                            hintStyle: TextStyle(
                                color: Color(0xffAEB1B3),
                                fontSize: 30,
                                fontWeight: FontWeight.bold)),
                        keyboardType: TextInputType.multiline,
                        controller: bloc.password,
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Please Enter Your Password ";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                  ],
                )),
            const SizedBox(
              height: 22,
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.rememberMyId,
                        onChanged: (value) {
                          bloc.rememberMyId = value ?? false;

                          bloc.saveRemeberMyID(
                              bloc.rememberMyId ? bloc.id.text : "");
                          bloc.saveRemeberMyID(
                              bloc.rememberMyId ? bloc.password.text : "");

                          setState(() {});
                        },
                      ),
                      const Text(
                        "Remember my ID for future logins.",
                        style:
                            TextStyle(color: Color(0xff95989A), fontSize: 14),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Checkbox(
                        value: bloc.useFingerPrintNextTime,
                        onChanged: (value) {
                          bloc.useFingerPrintNextTime = value ?? false;
                          bloc.saveUseFingerPrint(
                              bloc.useFingerPrintNextTime ? "false" : "true");

                          setState(() {});
                        },
                      ),
                      const Text(
                        "Use fingerprint recognition next time.",
                        style:
                            TextStyle(color: Color(0xff95989A), fontSize: 14),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                if (bloc.formKey.currentState!.validate()) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage()),
                  );
                }

                setState(() {});
              },
              child: Container(
                height: 40,
                width: 310,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(38),
                    gradient: const LinearGradient(
                        colors: [Color(0xff16CFF3), Color(0xff027FAC)])),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    // Expanded(child: Container()),
                    SizedBox(
                      width: 50,
                    ),
                    Text(
                      "Sign in",
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                    IconButton(
                      onPressed: null,
                      icon: Icon(Icons.arrow_forward_ios),
                      color: Color(0xffFFFFFF),
                      iconSize: 16,
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
