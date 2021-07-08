import 'package:flutter/material.dart';
import 'package:provider_api_firebase_sajib/screens/screen2/components/body.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
            child: Text(
          "Sign in",
          style: TextStyle(color: Colors.teal),
        )),
      ),
      body: Body2(),
    );
  }
}
