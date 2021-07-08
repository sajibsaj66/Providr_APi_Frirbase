import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_firebase_sajib/helpers/size_config/size_config.dart';
import 'package:provider_api_firebase_sajib/screens/screen1/screen1.dart';
import 'package:provider_api_firebase_sajib/screens/screen2/screen2.dart';

class Wrapper extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    ScreenSize().init(context);
    var _auth = Provider.of<User?>(context);
    return _auth == null ? Screen2() : Screen1();
  }
}
