//import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flashquad_app/auth/login_or_register.dart';
//import 'package:flashquad_app/firebase_options.dart';
import 'package:flashquad_app/theme/dark_mode.dart';
import 'package:flashquad_app/theme/light_mode.dart';

// void main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
//   runApp(const MyApp()); //flutter has a global function named runApp that takes a single widget and inflates that widget to the screen
// }

class MyApp extends StatelessWidget { //stateless widget is a UI element that doesn't have any dynamic data 
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) { //build method is called whenever the UI needs to be rebuild, ie: your data changes
    return MaterialApp(
      debugShowCheckedModeBanner: false, //Turns on a little "DEBUG" banner in debug mode to indicate that the app is in debug mode. This is on by default (in debug mode)
      home: const LoginOrRegister(), 
      theme: lightMode,
      darkTheme: darkMode,
    );
  }
}
