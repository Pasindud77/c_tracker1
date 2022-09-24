import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../navBar.dart';
import '../on_boarding_screen.dart';
class mainPage extends StatelessWidget {
  const mainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?> (stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if(snapshot.hasData) {
          return navBar();
      }else {
          return OnBoardingScreen();
        }
    }
      ),

    );
  }
}
