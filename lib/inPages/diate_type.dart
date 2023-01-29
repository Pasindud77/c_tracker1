import 'package:flutter/material.dart';
class diateType extends StatefulWidget {
  const diateType({Key? key}) : super(key: key);

  @override
  State<diateType> createState() => _diateTypeState();
}

class _diateTypeState extends State<diateType> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        centerTitle: true,
        title: Text('Diate information'),
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
                              image: AssetImage('images/meat lover.png')
                          )
                      ),
                    ),
                  ),
                  Text('Meat Lover',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),),
                ],
              ),
              Container(
                child: Text("A diet heavy in meat will have about twice the carbon footprint as a vegetarian or vegan diet. Some people call a meat lover diet the “carnivore diet”. If you are eating every kind of meat you are belong to this category",
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
                              image: AssetImage('images/average.png')
                          )
                      ),
                    ),
                  ),
                  Text('Average',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),),
                ],
              ),
              Container(
                child: Text("In this category not eat meat as meat lovers. it is like small amount of meat to the as a average diate. This diate produce 2.5 tons of CO2 emitted per year ",
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
                              image: AssetImage('images/vegetarian.png')
                          )
                      ),
                    ),
                  ),
                  Text('Vegetarian',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),),
                ],
              ),
              Container(
                child: Text("A vegetarian does not eat any animal flesh such as meat, poultry, or fish. This diate produce 1.7 tons of CO2 emitted per year ",
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
                              image: AssetImage('images/vegan.png')
                          )
                      ),
                    ),
                  ),
                  Text('Vegan',style: TextStyle(fontWeight: FontWeight.bold,
                      fontSize: 25.0
                  ),),
                ],
              ),
              Container(
                child: Text("A vegan diet is based on plants (such as vegetables, grains, nuts and fruits) and foods made from plants. Vegans do not eat foods that come from animals, including dairy products and eggs. This diate only produce 1.5 tons of CO2 emitted per year",
                  textAlign: TextAlign.justify, ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
