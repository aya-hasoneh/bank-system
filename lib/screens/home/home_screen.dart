import 'package:badges/badges.dart';



import 'package:flutter/material.dart';

import '../../shared_widget/appbar.dart';
import '../../shared_widget/background.dart';
import '../../shared_widget/button_all_page.dart';
import '../../utils/singelton.dart';
import '../wallet/wallet_screen.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                          child: Column(children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Text(
                              Singelton.prefrence.info.name,
                              style: const TextStyle(
                                  fontSize: 25, color: Color(0xff777879)),
                            ),
                            const Padding(
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
                    gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.topCenter,
                        colors: [
                          const Color(0xff2189BC).withOpacity(1.0),
                          const Color(0xff0A496A)
                        ]),
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: const []),
                child: Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Column(children: [
                    const Text(
                      "Bank Accounts",
                      style: TextStyle(color: Color(0xff85C3EC), fontSize: 16),
                    ),
                    const Text(
                      "2 Active Accounts",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 15, left: 20, right: 20),
                      child: Divider(
                        height: 5,
                        color: Colors.white,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 10),
                      child: Text(
                        "Accounting Balance",
                        style:
                            TextStyle(color: Color(0xff85C3EC), fontSize: 18),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 15,
                          height: 15,
                          decoration: const BoxDecoration(
                            color: Color(0xff1ACDF0),
                            shape: BoxShape.circle,
                          ),
                        ),
                        const SizedBox(
                          width: 14,
                        ),
                        Text(
                          "JD " + Singelton.prefrence.info.balance,
                          style: const TextStyle(
                              color: Colors.white, fontSize: 28),
                        ),
                      ],
                    )
                  ]),
                ),
              ),
              const SizedBox(
                height: 17,
              ),
              Container(
                width: 380,
                height: 313,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 13,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Badge(
                          badgeColor: Colors.red,
                          badgeContent: const Text(
                            '3',
                            style: TextStyle(color: Colors.white),
                          ),
                          child: const Icon(
                            Icons.mail_outline,
                            color: Color(0xffAEB1B3),
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        const Text(
                          "Messages",
                          style:
                              TextStyle(color: Color(0xff707273), fontSize: 18),
                        )
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 16),
                      child: Row(
                        children: [
                          Image.asset("assets/key.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: const [
                                  Text(
                                    "Remote Access Scam",
                                    style: TextStyle(
                                        color: Color(0xff95989A), fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 70,
                                  ),
                                  Text(
                                    "9:33 am, 26 Sep. 17",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff95989A)),
                                  ),
                                ]),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                    "The banking industry has seen an increase in \n customers and businesses receiving cold calls from...",
                                    style: TextStyle(
                                        fontSize: 13,
                                        color: Color(0xff95989A))),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 45, left: 16),
                      child: Row(
                        children: [
                          Image.asset("assets/head.png"),
                          Padding(
                            padding: const EdgeInsets.only(left: 11),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(children: const [
                                  Text(
                                    "Where can I find my IBAN?",
                                    style: TextStyle(
                                        color: Color(0xff95989A), fontSize: 13),
                                  ),
                                  SizedBox(
                                    width: 40,
                                  ),
                                  Text(
                                    "11:45 am, 24 Sep. 17",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xff95989A)),
                                  ),
                                ]),
                                const SizedBox(
                                  height: 8,
                                ),
                                const Text(
                                  "You can find your IBAN and BIC, on your account on\n  Online Banking or your account statement...",
                                  style: TextStyle(
                                      fontSize: 13, color: Color(0xff95989A)),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ButtonAllPage(
                        titleButton: "View More",
                        colorButton: const [
                          Color(0xff0078A6),
                          Color(0xff16CFF3)
                        ],
                        onTap: () { Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  WalletPage()),
  );}),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
