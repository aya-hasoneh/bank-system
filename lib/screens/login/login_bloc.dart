import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class LoginBloc {
  TextEditingController id = TextEditingController();
  TextEditingController password = TextEditingController();
  bool rememberMyId = false;
  bool useFingerPrintNextTime = false;

  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  String name = "";
  final storage = FlutterSecureStorage();

  saveRemeberMyID(String value) async {
    await storage.write(key: "remeberMyIDCheckBox", value: value);
  }

  Future<String> readRemeberMyID() async {
    return await storage.read(key: "remeberMyIDCheckBox") ?? "";
  }

  //------------------------------------------------------------------

saveUseFingerPrint(String value) async {
    await storage.write(key: "useFingerPrint", value: value);
  }

  Future<String> readUseFingerPrint() async {
    return await storage.read(key: "useFingerPrint") ?? "";
  }

 

}
