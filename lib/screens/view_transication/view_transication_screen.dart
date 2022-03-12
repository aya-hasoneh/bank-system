import 'package:bank_of_america/shared_widget/background.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/appbar.dart';

class ViewTransicationPage extends StatelessWidget {
  const ViewTransicationPage({Key? key}) : super(key: key);
// padding: EdgeInsets.only(top: 55, left: 30),
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
        Padding(
          padding:const  EdgeInsets.only(top: 55, left: 30),
          child: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
         Padding(
          padding: const EdgeInsets.only(top: 66, left: 60),
          child: InkWell(
            onTap: (){Navigator.pop(context);},
            child: Container(
              child: const Text(
                "Back",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 20, left: 35),
          child: AppBarForAllPage(
            titleAppBar: "WALLET",
          ),
        )
      ]),
    );
  }
}
