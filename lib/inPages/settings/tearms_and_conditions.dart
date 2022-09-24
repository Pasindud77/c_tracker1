import 'package:flutter/material.dart';
class tearms extends StatefulWidget {
  const tearms({Key? key}) : super(key: key);

  @override
  State<tearms> createState() => _tearmsState();
}

class _tearmsState extends State<tearms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Terms and conditions'),
      ),
      body: Center(
        child: Container(
          child: (
              Text('Terms and conditions ')
          ),
        ),
      )
      ,

    );
  }
}
