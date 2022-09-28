import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../settings.dart';
class edit_user_profile extends StatefulWidget {
  const edit_user_profile({Key? key}) : super(key: key);

  @override
  State<edit_user_profile> createState() => _edit_user_profileState();
}

class _edit_user_profileState extends State<edit_user_profile> {
  final _emailController = TextEditingController();
  Future passwordReset() async{
    try {
      await FirebaseAuth.instance.sendPasswordResetEmail(
          email: _emailController.text.trim());
    } on FirebaseAuthException catch (error){
      print(error);
      showDialog(context: context,
          builder: (context) =>AlertDialog(
            content: Text(error.message.toString()),
          )
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Edit user Profile'),
      ),
      body: Container(
        child: ListView(
          children: [
            SizedBox(height:30,),
            Center(
              child: Stack(
                children: [
                  Container(

                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image:  DecorationImage(
                        image: AssetImage('images/profile.jpg')
                      )
                    ),
                  ),
                  Positioned(
                      bottom:0 ,
                      right: 0,
                      child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      border: Border.all(
                        width: 4,
                        color: Colors.white
                      ),
                      color: Colors.teal
                    ),
                    child: Icon(Icons.edit,color: Colors.white,),
                  ))
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10.0),
                  labelText: "User Name",
                     hintText: "User name"
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    labelText: "Email",
                    hintText: "Email"
                ),
              ),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: passwordReset,
                      child: Text ('Change Password'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.teal
                    ),

                  )
                ],
              ),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => settings()));
                  },
                    child: Text ('Cancel'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal
                    ),
                  ),
                  ElevatedButton(onPressed: (){},
                    child: Text ('Save changes'),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.teal
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ) ,

    );
  }
}
