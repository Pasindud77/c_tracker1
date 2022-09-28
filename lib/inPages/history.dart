import 'package:flutter/material.dart';
class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: (
            Text(
                'History',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 50,
                color: Colors.teal)
            )
        ),
      ),
    );
  }
}