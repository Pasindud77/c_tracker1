import 'package:c_tracker/inPages/society.dart';
import 'package:c_tracker/inPages/history.dart';
import 'package:c_tracker/inPages/settings.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:c_tracker/inPages/tracker.dart';
class navBar extends StatefulWidget {
  const navBar({Key? key}) : super(key: key);

  @override
  State<navBar> createState() => _navBarState();
}

class _navBarState extends State<navBar> {
 int _selectindex = 0;
 void _navigateBottomBar(int count){
   setState(() {
     _selectindex = count;
   });
 }
 final List <Widget> _inPages = [
   tracker(),
   history(),
   society(),
   settings(),
 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _inPages [_selectindex],
        bottomNavigationBar: GNav(
          backgroundColor: Colors.teal,
          color: Colors.white,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.tealAccent.shade400,
          gap: 8,
          padding: EdgeInsets.all(16),
          selectedIndex: _selectindex,
          onTabChange: _navigateBottomBar,
          iconSize: 25.0,
          tabs: const[
            GButton(icon: Icons.track_changes,
            text: 'Tracker',),
            GButton(icon: Icons.feed,
            text: 'History',),
            GButton(icon: Icons.people,
            text: 'Society',),
            GButton(icon: Icons.settings,
            text: 'Settings',)
          ],
        ),
    );
  }
}
