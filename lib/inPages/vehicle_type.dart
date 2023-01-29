import 'package:flutter/material.dart';
class vehicleType extends StatefulWidget {
  const vehicleType({Key? key}) : super(key: key);

  @override
  State<vehicleType> createState() => _vehicleTypeState();
}

class _vehicleTypeState extends State<vehicleType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Vehicle type information'),
      ),
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
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/petrol car.png')
                                )
                            ),
                          ),
                        ),
                        Text('Petrol Car',style: TextStyle(fontWeight: FontWeight.bold,
                        fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                        child: Text("Four seater car that runs with petrol using as a fuel. This kind of vehicles' carbon dioxide emission is equivalent to 255g per passenger kilometer",
                          textAlign: TextAlign.justify, ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/desal car.png')
                                )
                            ),
                          ),
                        ),
                        Text('Diesel Car',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                      child: Text("Four seater car that runs with diesel using as a fuel.Diesels are more fuel efficient than petrol engines and emit less CO2, which makes them better for the environment.This kind of vehicles' carbon dioxide emission is equivalent to 171g per passenger kilometer",
                        textAlign: TextAlign.justify, ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/bus.png')
                                )
                            ),
                          ),
                        ),
                        Text('Bus ',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                      child: Text("Buses are used for public transportation. It can contain huge number of passengers so carbon emission for passenger is somewhat low.This kind of vehicles' carbon dioxide emission is equivalent to 105g per passenger kilometer ",
                        textAlign: TextAlign.justify, ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/bike.png')
                                )
                            ),
                          ),
                        ),
                        Text('Motorcycle',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                      child: Text("Motorcycles are for two passengers and runs with petrol. This kind of vehicles' carbon dioxide emission is equivalent to 103g per passenger kilometer . ",
                        textAlign: TextAlign.justify, ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/E-car.png')
                                )
                            ),
                          ),
                        ),
                        Text('Electric vehicle',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                      child: Text("Electric vehicles (EVs) have a battery instead of a gasoline tank, and an electric motor instead of an internal combustion engine. Electric vehicles' have small amount of carbon dioxide emission when comparing to diesel cars and petrol cars.This kind of vehicles' carbon dioxide emission is equivalent to 53g per passenger kilometer ",
                        textAlign: TextAlign.justify, ),
                    ),
                    SizedBox(height: 10,),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                                shape: BoxShape.rectangle,
                                image:  DecorationImage(
                                    image: AssetImage('images/train.png')
                                )
                            ),
                          ),
                        ),
                        Text('Train',style: TextStyle(fontWeight: FontWeight.bold,
                            fontSize: 25.0
                        ),),
                      ],
                    ),
                    Container(
                      child: Text("Trains are mode of transportation.It can hold huge amount of people. trains' carbon dioxide emission is equivalent to 41g per passenger kilometer ",
                        textAlign: TextAlign.justify, ),
                    )
                  ],
    ),
              ),
            ),
          ),
    );
  }
}
