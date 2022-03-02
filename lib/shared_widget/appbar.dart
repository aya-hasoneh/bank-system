import 'package:flutter/material.dart';

class AppBarForAllPage extends StatelessWidget {

  String titleAppBar;
  AppBarForAllPage({required this.titleAppBar});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  const EdgeInsets.only(top: 31,left: 131),
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            titleAppBar,
            style: const TextStyle(color: Colors.white, fontSize: 20),
          ),
        //  Expanded(child: Container()),
        
     const Icon(Icons.list,color: Colors.white,size: 30,),
    
        ],
      ),
    );
  }
}


 