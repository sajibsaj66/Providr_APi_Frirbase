import 'package:flutter/material.dart';
import 'package:provider_api_firebase_sajib/screens/screen1/components/body.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text("Provider with Api",
                style: TextStyle(color: Colors.white))),
      ),
      body: Body1(),
    );
  }
}
