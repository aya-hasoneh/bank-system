import 'dart:math';

import 'package:bank_of_america/screens/wallet/wallet_creditcard.dart';
import 'package:bank_of_america/screens/wallet/wallet_saving.dart';
import 'package:bank_of_america/shared_widget/appbar.dart';
import 'package:bank_of_america/shared_widget/background.dart';
import 'package:bank_of_america/utils/singelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_custom_tab_bar/library.dart';

class WalletPage extends StatefulWidget {
  const WalletPage({Key? key}) : super(key: key);

  @override
  State<WalletPage> createState() => _WalletPageState();
}

class _WalletPageState extends State<WalletPage>
    with SingleTickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          BackgroundImage(),
          Padding(
            padding: const EdgeInsets.only(top: 35),
            child: AppBarForAllPage(titleAppBar: "WALLET"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 140),
            child: Container(
              child: TabBar(
                  labelColor: Colors.white,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicatorColor: Colors.white,
                  labelStyle: const TextStyle(fontSize: 20),
                  labelPadding: const EdgeInsets.only(
                    left: 60,
                    right: 60,
                  ),
                  isScrollable: true,
                  unselectedLabelColor: Colors.white,
                  controller: tabController,
                  tabs: const [

                     Tab(
                       text: "Credit Card",
                     ),
                     Tab(
                       text: "Saving",
                     ),
                  ]),
            ),
          ),
          TabBarView(controller: tabController, children:  [
            WalletCreditCard(),
          WalletSaving(),
           
          ]),
        ],
      ),
    );
  }
}
