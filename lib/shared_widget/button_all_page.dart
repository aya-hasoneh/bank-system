import 'package:flutter/material.dart';

class ButtonAllPage extends StatelessWidget {
  String titleButton;
  List<Color> colorButton;
  VoidCallback onTap ;
  ButtonAllPage({required this.titleButton, required this.colorButton ,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 40,
        width: 310,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: colorButton),
            borderRadius: BorderRadius.circular(30)),
        child: Center(
            child: Text(
          titleButton,
          style: TextStyle(color: Colors.white, fontSize: 15),
        )),
      ),
    );
  }
}
