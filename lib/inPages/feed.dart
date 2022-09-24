import 'package:flutter/material.dart';
class feed extends StatefulWidget {
  const feed({Key? key}) : super(key: key);

  @override
  State<feed> createState() => _feedState();
}

class _feedState extends State<feed> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (
            Text(
                'Feed',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.teal)
            )
        ),
      ),
    );
  }
}