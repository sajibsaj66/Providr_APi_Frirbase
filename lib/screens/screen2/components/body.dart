import 'package:flutter/material.dart';
import 'package:provider_api_firebase_sajib/apis/auth.dart';

class Body2 extends StatefulWidget {
  @override
  _Body2State createState() => _Body2State();
}

class _Body2State extends State<Body2> {
  String mail = ' ';
  String Password = ' ';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        new Container(
          padding: const EdgeInsets.only(left: 15.0),
          color: Colors.white,
          child: new TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon: const Icon(
                Icons.email,
                color: Colors.black,
              ),
              hintText: 'Your email address',
              labelText: 'E-mail',
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (v) => mail = v,
          ),
        ),
        new Container(
          padding: const EdgeInsets.only(left: 15.0),
          color: Colors.white,
          child: new TextFormField(
            decoration: const InputDecoration(
              fillColor: Colors.white,
              border: UnderlineInputBorder(),
              filled: true,
              icon: const Icon(
                Icons.password,
                color: Colors.black,
              ),
              hintText: 'Your password',
              labelText: 'Password',
            ),
            keyboardType: TextInputType.emailAddress,
            onChanged: (v) => Password = v,
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: Colors.teal,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25),
              ),
              elevation: 15.0,
            ),
            onPressed: () => Auth.SignUp(mail, Password),
            child: Text("Sign In  "))
      ],
    );
  }
}
