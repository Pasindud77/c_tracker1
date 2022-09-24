import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
class ForgetPassword extends StatefulWidget {
  const ForgetPassword({Key? key}) : super(key: key);

  @override
  State<ForgetPassword> createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
        title: Text('Forget Password'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Enter Your Email and we wil send a Password Reset Link to your email',
            textAlign:TextAlign.center,
              style: TextStyle(fontSize: 15),
            ),
            SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                controller: _emailController,
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.teal),
                       borderRadius: BorderRadius.circular(12)
                    ),
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: "Email"
                ),
              ),
            ),
            MaterialButton(onPressed: passwordReset,
              child: Text('Reset Password'),
              color: Colors.teal,
              textColor: Colors.white,
            )
          ],
        ),
      ),
    );
  }
}
