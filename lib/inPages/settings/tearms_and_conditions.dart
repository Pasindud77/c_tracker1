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
        title: Text('Terms of use'),
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
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: Center(
                    child: (
                        Text('Terms of use',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,),)
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text("We at C-tracker, appreciate your use of the services we provide, which we created to aid in aiding our users' pursuit of a greener way of life. The contractual agreement you enter into while using our products and services is made clearer for us by this Terms of Usage document.",
                textAlign: TextAlign.justify,),
                Text("When you use our products and services now or in the future, you are agreeing to our latest Terms of Usage. There may be times where we do not exercise or enforce any right or provision of the Terms of Service; in doing so, we are not waiving that right or provision. These terms do contain a limitation of our liability. We may terminate your account if you violate any of the terms within this document."
                    ,textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text('User profile Terms ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                Text("You are responsible for maintaining the security of your account and password. We cannot and will not be liable for any loss or damage resulting from your failure to comply with this security obligation.",
                  textAlign: TextAlign.justify,),
                Text("You must be a human. Accounts registered by “bots” or other automated methods are not permitted.",
                  textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text('Cancellation and Termination ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                Text("We have the right to suspend or terminate your account and refuse any and all current or future use of our Services for any reason at any time. Suspension means you and any other users on your account will not be able to access the account or any content in the account. Termination will furthermore result in the deletion of your account or your access to your account, and the forfeiture and relinquishment of all content in your account. We also reserve the right to refuse the use of the Services to anyone for any reason at any time",
                  textAlign: TextAlign.justify,),
                SizedBox(height: 10,),
                Text('Privacy and Security',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15,),),
                Text("Your use of our products and services is at your sole risk. We provide these products and services on an “as is” and “as available” basis. We do not offer service-level agreements.",
                 textAlign: TextAlign.justify,),
                Text("We take many measures to protect and secure your data through backups, redundancies, and encryption. When you use our products and services, you agree that we may process your data as described in our Privacy Policy and for no other purpose. ",
               textAlign: TextAlign.justify,),
              ],
            ),
          ),
        ),
      )
      ,

    );
  }
}
