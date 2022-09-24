import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class tracker extends StatefulWidget {
  const tracker({Key? key}) : super(key: key);

  @override
  State<tracker> createState() => _trackerState();
}

class _trackerState extends State<tracker> {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
                    'Tracker',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 50,
                    color: Colors.teal)
                ),
      ),
    );
  }
}
