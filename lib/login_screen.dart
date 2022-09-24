import 'package:c_tracker/signup_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'forget_password.dart';
import 'navBar.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}
class _LoginScreenState extends State<LoginScreen> {
  final _formKey =GlobalKey<FormState>();
  final TextEditingController emailController =new TextEditingController();
  final TextEditingController passwordController =new TextEditingController();
  final _auth = FirebaseAuth.instanceFor;
  String? errorMessage;

  @override
  Widget build(BuildContext context) {
    final emailField = TextFormField(
        autofocus: false,
        controller: emailController,
        keyboardType: TextInputType.emailAddress,
        validator: (value) {
          if (value!.isEmpty) {
            return ("Please Enter Your Email");
          }
          if (!RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
              .hasMatch(value)) {
            return ("Please Enter a valid email");
          }
          return null;
        },
        onSaved: (value) {
          emailController.text = value!;
        },
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.mail),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Email",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    final passwordField = TextFormField(
        autofocus: false,
        controller: passwordController,
        obscureText: true,
        validator: (value) {
          RegExp regex = new RegExp(r'^.{6,}$');
          if (value!.isEmpty) {
            return ("Password is required for login");
          }
          if (!regex.hasMatch(value)) {
            return ("Enter Valid Password(Min. 6 Character)");
          }
        },
        onSaved: (value) {
          passwordController.text = value!;
        },
        textInputAction: TextInputAction.done,
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.vpn_key),
          contentPadding: EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Password",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ));
    return Scaffold(
    backgroundColor: Colors.white,
      body: Center(
        child: SingleChildScrollView(
        child: Container(
          color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(36.0),
                child: Form(
                key: _formKey,
                   child: Column(


                       children: <Widget>[
                         Text("C-Tracker",
                           style: TextStyle(fontWeight: FontWeight.bold,
                               fontSize: 50,
                               color: Colors.teal),),
                         Padding(
                           padding: const EdgeInsets.all(8.0),
                           child: Text("Welcome ! Lets Save The Planet Together",
                             style: TextStyle(fontWeight: FontWeight.normal,
                                 fontSize: 15,
                                 color: Colors.teal),),
                         ),
                          SizedBox(
                          height: 200,
                            child: Image.asset(
                             "images/Login.png",
                           fit: BoxFit.contain,
                                  )),
                            SizedBox(height: 45),
                         emailField,
                         SizedBox(height: 25),
                           passwordField,
                         GestureDetector(
                           onTap: (){
                             Navigator.push(
                                 context,
                                 MaterialPageRoute(
                                 builder: (context) => ForgetPassword())
                             );
                           },
                           child: Row(
                             mainAxisAlignment: MainAxisAlignment.end,
                             children: [
                               Padding(
                                 padding: const EdgeInsets.only(right:15.0),
                                 child: Text("Forgot password?",style: TextStyle(color: Colors.blue),),
                               ),
                             ],
                           ),
                         ),
                         SizedBox(height: 20,),
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal: 25.0),
                           child: Container(
                             padding: const EdgeInsets.all(20.0),
                             decoration: BoxDecoration(color: Colors.teal,
                                 borderRadius: BorderRadius.circular(12)
                             ),
                             child: Center(
                                 child: GestureDetector(
                                   onTap: (){
                                     signIn(emailController.text, passwordController.text);
                                   },
                                   child: Container(
                                     child: Text('Log in',
                                       style: TextStyle(color: Colors.white,
                                         fontSize: 18,fontWeight: FontWeight.bold,
                                       ),
                                     ),
                                   ),
                                 )
                             ),
                           ),
                         ),
                         SizedBox(height: 20,),
                         Row(
                           mainAxisAlignment: MainAxisAlignment.center,
                           children: [
                             Text('Not a Memeber yet ?'),
                             TextButton(
                               child: Text(' Register now!',style: TextStyle(
                                 color: Colors.blue,
                                 fontWeight: FontWeight.bold,
                               ),),
                               onPressed: () {
                                 Navigator.push(
                                     context,
                                     MaterialPageRoute(
                                       builder: (context) => SignupScreen(),
                                     ));
                               },
                             )
                           ],
                         ),
                   ],
                ),
             ),
            ),
          ),
       ),
      ),
    );
  }
  Future signIn(String email, String password) async {
    if (_formKey.currentState!.validate()) {
      try {
        await FirebaseAuth.instance.signInWithEmailAndPassword(email: email, password: password)
            .then((uid) => {
          Fluttertoast.showToast(msg: "Login Successful"),
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => navBar())),
        });
      } on FirebaseAuthException catch (error) {
        switch (error.code) {
          case "invalid-email":
            errorMessage = "Your email address appears to be malformed.";

            break;
          case "wrong-password":
            errorMessage = "Your password is wrong.";
            break;
          case "user-not-found":
            errorMessage = "User with this email doesn't exist.";
            break;
          case "user-disabled":
            errorMessage = "User with this email has been disabled.";
            break;
          case "too-many-requests":
            errorMessage = "Too many requests";
            break;
          case "operation-not-allowed":
            errorMessage = "Signing in with Email and Password is not enabled.";
            break;
          default:
            errorMessage = "An undefined Error happened.";
        }
        Fluttertoast.showToast(msg: errorMessage!);
        print(error.code);
      }
    }
  }
}


