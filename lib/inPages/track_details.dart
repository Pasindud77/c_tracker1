import 'package:c_tracker/inPages/vehicle_type.dart';
import 'package:flutter/material.dart';

import 'food_details.dart';
class TrackerDetails extends StatefulWidget {
  const TrackerDetails({Key? key}) : super(key: key);

  @override
  State<TrackerDetails> createState() => _TrackerDetailsState();
}

class _TrackerDetailsState extends State<TrackerDetails> {
  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Recorde Traveling Details'),
      ),
      body: Container(
        height: double.infinity,
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
        child: SingleChildScrollView(
          child: Column(
            children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                      'Information About Traveling',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)
                  ),
                ),
              SizedBox(height: 15,),
              Text('Millage traveled',style: TextStyle(fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.white)),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      labelText: "Number of kilometers",
                      hintText: "Number of kilometers"
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Vehicle type',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.white)),
                  IconButton(color: Colors.blue,onPressed: (){Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => vehicleType(),
                      ));}, icon: Icon(Icons.info))
                ],
              ),
              RadioListTile(
                value: 1,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Car (Petrol)"),
                subtitle: Text("192g per passenger km"),
                secondary: Icon(Icons.car_crash),
              ),
              RadioListTile(
                value: 2,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Car (Diesel)"),
                subtitle: Text("171g per passenger km"),
                secondary: Icon(Icons.car_crash_outlined),
              ),
              RadioListTile(
                value: 3,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Bus"),
                subtitle: Text("105g per passenger km"),
                secondary: Icon(Icons.bus_alert_sharp),
              ),
              RadioListTile(
                value: 4,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Motorcycle"),
                subtitle: Text("103g per passenger km"),
                secondary: Icon(Icons.bike_scooter),
              ),
              RadioListTile(
                value: 5,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Electric vehicle"),
                subtitle: Text("53g per passenger km"),
                secondary: Icon(Icons.electric_car),
              ),
              RadioListTile(
                value: 6,
                groupValue: val,
                onChanged: (value) {
                  setState(() {
                    val = value!;
                  });
                },
                title: Text("Train"),
                subtitle: Text("41g per passenger km"),
                secondary: Icon(Icons.train),
              ),
              SizedBox(height:20 ,),
              ElevatedButton.icon(
                icon: Icon(Icons.navigate_next),
                onPressed: () {Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => foodDetails(),
                    ));},
                style: ElevatedButton.styleFrom(
                    fixedSize: const Size(320, 40), backgroundColor: Colors.blue),
                label: Text('Next'),
              ),
            ]
            ),
        ),
      ),
    );
  }
}