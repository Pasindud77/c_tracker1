import 'package:c_tracker/inPages/track_details.dart';
import 'package:flutter/material.dart';
class foodDetails extends StatefulWidget {
  const foodDetails({Key? key}) : super(key: key);

  @override
  State<foodDetails> createState() => _foodDetailsState();
}

class _foodDetailsState extends State<foodDetails> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
                'Information About Diate',style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 20,
                color: Colors.teal)
            ),
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
            title: Text("Meat Lover "),
            subtitle: Text("caption/subtext"),
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
            subtitle: Text("caption/subtext"),
            secondary: Icon(Icons.fastfood_sharp),
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
            subtitle: Text("No Beef"),
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
            title: Text("Vegetarin"),
            subtitle: Text("caption/subtext"),
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
            subtitle: Text("caption/subtext"),
            secondary: Icon(Icons.fastfood_sharp),
          ),
          SizedBox(height: 30,),
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                TextButton(
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
                  ),
                  onPressed: () { Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => TrackerDetails(),
                      ));},
                  child: Text('Back'),
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
                  child: Text('Save'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
