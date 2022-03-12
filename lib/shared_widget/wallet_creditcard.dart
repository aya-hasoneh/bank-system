import 'package:bank_of_america/screens/wallet/wallet_bloc.dart';
import 'package:bank_of_america/utils/singelton.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../screens/view_transication/view_transication_screen.dart';
import 'button_all_page.dart';
import '../screens/view_transication/view_transication_screen.dart';

class WalletCreditCard extends StatelessWidget {
  var walletBloc = WalletBloc();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        Container(
          child: Stack(children: [
            Padding(
              padding: const EdgeInsets.only(top: 235, left: 25, right: 25),
              child: Container(
                height: 260,
                width: 460,
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(20)),
                child: Column(children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 185),
                    child: Text("Availible Balance",
                        style: TextStyle(fontSize: 18, color: Color(0xffAEB1B3))),
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
                        style: const TextStyle(color: Colors.grey, fontSize: 28),
                      ),
                    ],
                  ),
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 190,
              ),
              child: Column(
                children: [
                  Container(
                    height: 190,
                    width: 450,
                    child: PageView.builder(
                        controller: walletBloc.pageController,
                        onPageChanged: (index) {},
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return cardView(index);
                        }),
                  ),
                  SmoothPageIndicator(
                    controller: walletBloc.pageController,
                    count: 3,
                    effect: const JumpingDotEffect(
                      dotHeight: 10,
                      dotWidth: 10,
                      jumpScale: .7,
                      verticalOffset: 15,
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 25, right: 25),
          child: Container(
            height: 305,
            width: 460,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20), topRight: Radius.circular(20)),
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
              //  Padding(
              //    padding: const EdgeInsets.only(top: 19,left: 25),
              //    child: Row(children: [Image.asset("assets/zara.png",width: 30,),
              //   const SizedBox(width: 10,),
              //   const Text("29 Sep. 17",style: TextStyle(fontSize: 15,color: Colors.grey),),
              //    const SizedBox(width: 15,),
              //  const Text("ZARA Mall Sof...",style: TextStyle(fontSize: 15,color: Colors.grey),),
              //   const SizedBox(width: 20,),
              //  const Text("\$ 49.99",style: TextStyle(fontSize: 15,color: Colors.grey),),
              //    ],),
              //  )
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
      ]),
    );
  }

  Widget cardView(int index) {
    if (index == 0) {
      return card("assets/visa.png");
    } else if (index == 1) {
      return card("assets/mastercard.png");
    } else {
      return card("assets/mastercard.png");
    }
  }

  Widget card(String image) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 169,
        width: 80,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: const Color(0xffD9D9D9)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 14, right: 20),
              child: Image.asset(
                image,
                scale: 0.6,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, right: 40),
              child: Text(
                "3455  6587  7854  4589",
                style: TextStyle(color: Color(0xff95989A), fontSize: 25),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 22, right: 250),
              child: Text(
                "02/18",
                style: TextStyle(color: Color(0xff95989A), fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
