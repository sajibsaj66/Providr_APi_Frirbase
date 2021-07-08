import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_api_firebase_sajib/models/ip_data.dart';
import 'package:provider_api_firebase_sajib/providers/data.dart';
import 'package:provider_api_firebase_sajib/screens/wrapper.dart';

import 'apis/id_data.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<DataProvider>(create: (_) => DataProvider()),
        FutureProvider<IpDataModel>(
          create: (_) => ApiData.getData(),
          initialData: IpDataModel(),
        ),
        StreamProvider<User?>.value(
            value: FirebaseAuth.instance.authStateChanges(), initialData: null)
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Wrapper(),
      ),
    ),
  );
}
