import 'package:flutter/material.dart';

class AppBarForAllPage extends StatelessWidget {
  
  String titleAppBar;
  AppBarForAllPage({required this.titleAppBar,});

  @override
  Widget build(BuildContext context) {
    return Row(
      //mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
   
        Padding(
          padding: const EdgeInsets.only(top: 30, left: 150),
          child: Row(
            children: [
              Text(
                titleAppBar,
                style: const TextStyle(color: Colors.white, fontSize: 20),
              ),
             const SizedBox(
                width: 80,
              ),
              IconButton(onPressed: () {}, icon: Image.asset("assets/list.png"))
            ],
          ),
        ),
      ],
    );
  }
}
