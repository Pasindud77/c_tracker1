import 'package:c_tracker/inPages/track_details.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
class tracker extends StatefulWidget {
  const tracker({Key? key}) : super(key: key);

  @override
  State<tracker> createState() => _trackerState();
}

class _trackerState extends State<tracker> {
 String? username = '';
 String? email = '';
 String? image = '';
 Future _getData() async{
   await FirebaseFirestore.instance.collection('users')
       .doc(FirebaseAuth.instance.currentUser!.uid)
       .get().then((snapshot)async
       {
         if(snapshot.exists){
           setState(() {
            username = snapshot.data()!['username'];
            email = snapshot.data()!['email'];
            image = snapshot.data()!['image'];
           });
         }
       }
   );
 }
 @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _getData();
  }
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text('Welcome back',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 35,
                          color: Colors.teal)
                      ),
              SizedBox(height: 20,),
              Container(

                width: 100,
                height: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image:  DecorationImage(
                        image: AssetImage('images/profile.jpg')
                    )
                ),
              ),
              SizedBox(height: 15,),
              Text("Name :" +username!),
              SizedBox(height: 15,),
              CircularPercentIndicator(
                animation: true,
                animationDuration: 1500,
                circularStrokeCap: CircularStrokeCap.round,
                radius: 120,
                lineWidth: 30,
                percent: 0.6,
                progressColor: Colors.teal,
                backgroundColor: Colors.teal.shade200,
                center: Text('60%',style: TextStyle(fontSize: 20),),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      width: 150,
                      height: 170,
                      child: Column(
                        children: [
                          Image.asset('images/transportation.png',
                          height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          LinearPercentIndicator(
                            lineHeight: 20,
                            animation: true,
                            animationDuration: 1000,
                            percent: 0.6,
                            progressColor: Colors.teal,
                            backgroundColor: Colors.teal.shade200,
                            center: Text('60%',style: TextStyle(fontSize: 20),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey,
                      ),
                      width: 150,
                      height: 170,
                      child: Column(
                        children: [
                          Image.asset('images/food.png',
                            height: 100,
                            width: 100,
                          ),
                          SizedBox(height: 20,),
                          LinearPercentIndicator(
                            lineHeight: 20,
                            animation: true,
                            animationDuration: 1500,
                            percent: 0.6,
                            progressColor: Colors.teal,
                            backgroundColor: Colors.teal.shade200,
                            center: Text('60%',style: TextStyle(fontSize: 20),),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              TextButton(
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                ),
                onPressed: () { Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => TrackerDetails(),
                    ));},
                child: Text('TextButton'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
