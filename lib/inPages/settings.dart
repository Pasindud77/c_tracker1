import 'package:c_tracker/inPages/settings/edit_user_settings.dart';
import 'package:c_tracker/inPages/settings/tearms_and_conditions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../login_screen.dart';
class settings extends StatefulWidget {
  const settings({Key? key}) : super(key: key);

  @override
  State<settings> createState() => _settingsState();
}

class _settingsState extends State<settings> {
final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        leading:Icon(Icons.settings) ,
        title: Text('Settings'),
      ),
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color(0xFF7CFF6B),
                  Color(0xFF0A8270)
                ],
                begin: Alignment.bottomRight,
                end: Alignment.topLeft,
              )
          ),
          child: ListView(
            children: [
              ListTile(
                leading:Icon (Icons.settings),
                title: Text('Edit User Profile'),
                subtitle: Text('go to the Edit User Profile'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => edit_user_profile()));
                },

              ),
              Divider(),
              ListTile(
                leading:Icon (Icons.filter_frames),
                title: Text('Tearms and conditions'),
                subtitle: Text('read tearms and conditions'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => tearms()));
                },
              ),
              Divider(),
              ListTile(
                leading:Icon (Icons.rate_review),
                title: Text('Rate'),
                subtitle: Text('Rate your experience'),
                trailing: Icon(Icons.arrow_forward),

              ),
              Divider(),
              ListTile(
                leading:Icon (Icons.logout),
                title: Text('Logout'),
                subtitle: Text('Logout from your profile'),
                trailing: Icon(Icons.arrow_forward),
                onTap: (){
                  FirebaseAuth.instance.signOut();
                  Navigator.of(context).pushReplacement(MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
                },
              ),
            ],
            padding: EdgeInsets.all(10),
          ),
        )
    );
  }
}