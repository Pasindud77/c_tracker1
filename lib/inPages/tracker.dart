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
 String? username ='' ;
 String? email = '';
 String? image='' ;
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
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
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
            child: Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text('Welcome back',style: TextStyle(fontWeight: FontWeight.bold,
                              fontSize: 35,
                              color: Colors.white)
                          ),
                  SizedBox(height: 10,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    child: Container(
                      decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.green.shade400,

                    ),
                      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  image:  DecorationImage(
                                      image: AssetImage('images/profile.jpg')
                                  )
                              ),
                            ),
                          ),
                          SizedBox(height: 15,),
                          Column(
                            children: [
                              Text("Userame" ,style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white)),
                              Text("E mail" ,style: TextStyle(fontWeight: FontWeight.bold,
                                  fontSize: 15,
                                  color: Colors.white)),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 15,),
                  CircularPercentIndicator(
                    animation: true,
                    animationDuration: 1500,
                    circularStrokeCap: CircularStrokeCap.round,
                    radius: 120,
                    lineWidth: 20,
                    percent: 0.4,
                    progressColor: Colors.blue,
                    backgroundColor: Colors.blue.shade200,
                    center: Text('Your Carbon \n Footprint  for this \n mouth ',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),textAlign: TextAlign.center),
                  ),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.green,
                          ),
                          width: 150,
                          height: 170,
                          child: Column(
                            children: [
                              Image.asset('images/transportation.png',
                              height: 100,
                                width: 100,
                              ),

                              SizedBox(height: 10,),
                              Text('Transpotation',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              LinearPercentIndicator(
                                lineHeight: 15,
                                animation: true,
                                animationDuration: 1000,
                                percent: 0.6,
                                progressColor: Colors.blue,
                                backgroundColor: Colors.blue.shade200,
                                center: Text('60%',style: TextStyle(fontSize: 15,color:Colors.white),),
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
                            color: Colors.green,
                          ),
                          width: 150,
                          height: 170,
                          child: Column(
                            children: [
                              Image.asset('images/food.png',
                                height: 100,
                                width: 100,
                              ),
                              SizedBox(height: 10,),
                              Text('Food',style: TextStyle(color: Colors.white),),
                              SizedBox(height: 10,),
                              LinearPercentIndicator(
                                lineHeight: 15,
                                animation: true,
                                animationDuration: 1500,
                                percent: 0.3,
                                progressColor: Colors.blue,
                                backgroundColor: Colors.blue.shade200,
                                center: Text('30%',style: TextStyle(fontSize: 15,color:Colors.white ),),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.add),
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackerDetails(),
                        ));},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(320, 40), backgroundColor: Colors.blue),
                    label: Text('Record Footprint'),
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
