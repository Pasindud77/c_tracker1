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
      body: SingleChildScrollView(
        child: Column(
          children: [
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                    'Information About Traveling',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.teal)
                ),
              ),
            SizedBox(height: 15,),
            Text('Millage traveled',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal)),
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
            Text('Vehicle type',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal)),
            RadioListTile(
              value: 1,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              title: Text("Car (Petrol)"),
              subtitle: Text("caption/subtext"),
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
              subtitle: Text("caption/subtext"),
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
              subtitle: Text("caption/subtext"),
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
              subtitle: Text("caption/subtext"),
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
              subtitle: Text("caption/subtext"),
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
              subtitle: Text("caption/subtext"),
              secondary: Icon(Icons.train),
            ),
            TextButton(
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
              ),
              onPressed: () { Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => foodDetails(),
                  ));},
              child: Text('Next'),
            )
          ]
          ),
      ),
    );
  }
}