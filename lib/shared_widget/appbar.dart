import 'package:flutter/material.dart';

class AppBarForAllPage extends StatelessWidget {
  bool showBackButton = false;
  String titleAppBar;
  AppBarForAllPage({required this.titleAppBar, required this.showBackButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        showBackButton
            ? Padding(
                padding: const EdgeInsets.only(left: 18),
                child: IconButton(
                    onPressed: () {},
                    icon: Row(children: const[
                      Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                      Text(
                        "Back",
                        style: TextStyle(color: Colors.white, fontSize: 15),
                      )
                    ])),
              )
            : Container(),
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 150),
          child: Row(
            children: [
              Text(
                titleAppBar,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
              SizedBox(
                width: 110,
              ),
              IconButton(onPressed: () {}, icon: Image.asset("assets/list.png"))
            ],
          ),
        ),
      ],
    );
  }
}
