import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
class society extends StatefulWidget {
  const society({Key? key}) : super(key: key);

  @override
  State<society> createState() => _societyState();
}

class _societyState extends State<society> {
  final Uri url = Uri.parse("https://www.nature.org/en-us/");
  final Uri url1 = Uri.parse("https://www.carbonfootprint.com/");
  final Uri url2 = Uri.parse("https://www.footprintnetwork.org/");
  final Uri url3 = Uri.parse("https://iasc.info/");
  final Uri url4 = Uri.parse("https://carbonfund.org/");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar (
      title: Text('Societies'),
        backgroundColor: Colors.teal,
        centerTitle: true,
        leading:Icon(Icons.people) ,
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
        child: ListView(
             children: [
               ListTile(

                 leading:Icon (Icons.people),
                 title: Text('The Nature Conservancy'),
                 subtitle: Text('Go to the website'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: (){
                    launchUrl (url,);
                 },

               ),
               Divider(),
               ListTile(
                 leading:Icon (Icons.people),
                 title: Text('Carbon FootPrint.com'),
                 subtitle: Text('Go to the website'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: (){
                   launchUrl (url1,);
                 },
               ),
               Divider(),
               ListTile(
                 leading:Icon (Icons.people),
                 title: Text('Globle footprint Network'),
                 subtitle: Text('Go to the website'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: (){
                   launchUrl (url2,);
                 },
               ),
               Divider(),
               ListTile(
                 leading:Icon (Icons.people),
                 title: Text('Inernational Arcitic Science Comittee'),
                 subtitle: Text('Go to the website'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: (){
                   launchUrl (url3,);
                 },
               ),
               Divider(),
               ListTile(
                 leading:Icon (Icons.people),
                 title: Text('Carbonfund'),
                 subtitle: Text('Go to the website'),
                 trailing: Icon(Icons.arrow_forward),
                 onTap: (){
                   launchUrl (url4,);
                 },
               ),
             ],
          padding: EdgeInsets.all(10),
           ),
      )

    );
  }
}