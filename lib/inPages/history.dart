import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
class history extends StatefulWidget {
  const history({Key? key}) : super(key: key);

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  Map <String, double> dataMap= {
    "Food": 6,
    "Transpotation":4
  };
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
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
                SizedBox(height: 30,),
                (
                    Text(
                        'History of the carbon emissions ',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.white)
                    )
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Day 1 ',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Transportation : 255g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                      Text('Food : 25g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 15,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Day 2 ',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Transportation : 300g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                      Text('Food : 40g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Divider(color: Colors.white,),
                SizedBox(height: 10,),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Day 3 ',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Column(mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text('Transportation : 200g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                      Text('Food : 10g',style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white)),
                    ],
                  ),
                ),
                Divider(color: Colors.white,),
                PieChart(dataMap: dataMap,
                  chartRadius: MediaQuery.of(context).size.width/1.7,
                  legendOptions: LegendOptions(
                    legendPosition: LegendPosition.bottom,
                  ),
                  chartValuesOptions: ChartValuesOptions(
                    showChartValuesInPercentage: true,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}