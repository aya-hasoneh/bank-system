import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  Color buttonBackGroundColor;
  String textButton;
  Color textColor;
  VoidCallback onTap;
  CustomButton({
    required this.buttonBackGroundColor,
    required this.textButton,
    required this.textColor,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16, left: 46, right: 45, bottom: 20),
      child: InkWell(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            color: buttonBackGroundColor.withOpacity(0.5),
            borderRadius: BorderRadius.circular(25),
          ),
          height: 48,
          child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            Container(),
            Text(
              textButton,
              style: TextStyle(color: textColor),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.arrow_forward_ios,
                  color: textColor,
                  size: 17,
                ))
          ]),
        ),
      ),
    );
  }
}
