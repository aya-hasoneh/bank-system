import 'package:flutter/material.dart';

import 'button_all_page.dart';
import '../utils/singelton.dart';
import '../screens/view_transication/view_transication_screen.dart';

class WalletSaving extends StatelessWidget {
  const WalletSaving({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 235, left: 25, right: 25),
                  child: Container(
                    height: 260,
                    width: 460,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(children: [
                      const Padding(
                        padding: EdgeInsets.only(top: 185),
                        child: Text("Availible Balance",
                            style: TextStyle(
                                fontSize: 18, color: Color(0xffAEB1B3))),
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
                            style:
                                const TextStyle(color: Colors.grey, fontSize: 28),
                          ),
                        ],
                      ),
                    ]),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 199, left: 50),
                  child: Container(
                    height: 170,
                    width: 330,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: const LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomCenter,
                          colors: [Color(0xffFFFFFF), Color(0xffD9D9D9)]),
                    ),
                    child: Column(children: [
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "Saving Account",
                        style: TextStyle(fontSize: 18, color: Color(0xffAEB1B3)),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Text(
                        "335-5437543-3-40-3",
                        style: TextStyle(color: Color(0xff95989A), fontSize: 18),
                      ),
                      Expanded(child: Container()),
                      Padding(
                        padding: const EdgeInsets.only(right: 10, bottom: 10),
                        child: Container(
                            alignment: Alignment.bottomRight,
                            child: Image.asset("assets/logoincard.png")),
                      ),
                    ]),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 16, left: 25, right: 25),
            child: Container(
              height: 305,
              width: 460,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20)),
                  color: Colors.white),
              child: Column(children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 80),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/clock.png",
                        scale: 0.7,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      const Text(
                        "History of Transactions",
                        style: TextStyle(fontSize: 18, color: Color(0xff707273)),
                      ),
                    ],
                  ),
                ),
                Expanded(child: Container()),
                ButtonAllPage(
                  titleButton: "View Transactions",
                  colorButton: const [Color(0xff16CFF3), Color(0xff0078A6)],
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => ViewTransicationPage()),
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
              ]),
            ),
          )
        ],
      ),
    );
  }
}
