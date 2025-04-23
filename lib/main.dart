import 'package:flutter/material.dart';
import 'package:my_first_flutter_app/HomeScreen.dart';
import 'package:my_first_flutter_app/Login2Screen.dart';
import 'package:my_first_flutter_app/LoginScreen.dart';
import 'package:my_first_flutter_app/ProfileColorChange.dart';
import 'package:my_first_flutter_app/ProfileScreen.dart';
import 'package:my_first_flutter_app/SplashScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
      ),
      home: LoginScreen(),
      // initialRoute: '/splash',
      // routes: {
      //   '/login': (context) =>  LoginScreen(),
      //   '/profile': (context) => Profilescreen(),
      //   '/splash': (context) => Splashscreen(),
      // },
    );
  }
}
