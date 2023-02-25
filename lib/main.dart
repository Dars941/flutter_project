import 'package:firebase_core/firebase_core.dart';
import 'package:firstapp/screens/homescreen.dart';
import 'package:firstapp/screens/login_auth.dart';
import "package:flutter/material.dart";
import './screens/login_screen.dart';
import 'firebase_options.dart';
//import './screens/login_auth.dart';
Future<void> main()
async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());



}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: welcomescreen(),

    );
  }
}

