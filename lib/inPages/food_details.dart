import 'package:c_tracker/inPages/track_details.dart';
import 'package:flutter/material.dart';

import '../navBar.dart';
import 'diate_type.dart';
class foodDetails extends StatefulWidget {
  const foodDetails({Key? key}) : super(key: key);

  @override
  State<foodDetails> createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
  void _showDialog (){
    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: Text('Done'),
        content: Text('Your data saved successfully'),
        actions: [
          MaterialButton(
              onPressed: (){Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => navBar(),
                  ));},
            child: Text('OK'),
          ),
        ],
      );
    });
  }
  bool _value = false;
  int val = -1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.teal,
        title: Text('Recorde Diate Details'),
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
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('Diate type',style: TextStyle(fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.white)),
                IconButton(color: Colors.blue,onPressed: (){Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => diateType(),
                    ));}, icon: Icon(Icons.info))
              ],
            ),
            SizedBox(height: 15,),
            RadioListTile(
              value: 1,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              title: Text("Meat Lover ",style: TextStyle(color: Colors.white),),
              subtitle: Text("3.3 tons of CO2 emitted per year"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            RadioListTile(
              value: 2,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              title: Text("Average"),
              subtitle: Text("2.5 tons of CO2 emitted per year"),
              secondary: Icon(Icons.fastfood_sharp),
            ),

            RadioListTile(
              value: 4,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              title: Text("Vegetarian"),
              subtitle: Text("1.7 tons of CO2 emitted per year"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            RadioListTile(
              value: 4,
              groupValue: val,
              onChanged: (value) {
                setState(() {
                  val = value!;
                });
              },
              title: Text("Vegan"),
              subtitle: Text("1.5 tons of CO2 emitted per year"),
              secondary: Icon(Icons.fastfood_sharp),
            ),
            SizedBox(height: 30,),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton.icon(
                    icon: Icon(Icons.arrow_back_ios_new),
                    onPressed: () {Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => TrackerDetails(),
                        ));},
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 40), backgroundColor: Colors.blue),
                    label: Text('Back'),
                  ),
                  ElevatedButton.icon(
                    icon: Icon(Icons.save),
                    onPressed: _showDialog,
                    style: ElevatedButton.styleFrom(
                        fixedSize: const Size(120, 40), backgroundColor: Colors.blue),
                    label: Text('Save'),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
