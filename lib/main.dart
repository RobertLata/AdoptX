import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:pet_adoption_app/hive/hive_manager.dart';
import 'package:pet_adoption_app/utils/auth_utils.dart';
import 'package:pet_adoption_app/authentication/verify_email_page.dart';

import 'authentication/auth_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await Hive.initFlutter('database');
  await HiveManager.instance.initHiveManager();
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

Color mainColor = const Color.fromRGBO(48, 96, 96, 1.0);
Color startingColor = const Color.fromRGBO(70, 112, 112, 1.0);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Pet Adoption App',
      theme: ThemeData(
        primaryColor: mainColor,
        primarySwatch: Colors.grey,
        //fontFamily: 'Georgia',
      ),
      scaffoldMessengerKey: Utils.messengerKey,
      navigatorKey: navigatorKey,
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
    body: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasError) {
          return Center(child: Text('Something went wrong!'));
        } else if (snapshot.hasData) {
          return VerifyEmailPage();
        } else {
          return AuthPage();
        }
      },
    ),
  );
}
