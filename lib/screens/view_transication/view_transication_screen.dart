import 'package:bank_of_america/shared_widget/background.dart';
import 'package:flutter/material.dart';

import '../../shared_widget/appbar.dart';

class ViewTransicationPage extends StatelessWidget {
  const ViewTransicationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        BackgroundImage(),
       
      ]),
    );
  }
}