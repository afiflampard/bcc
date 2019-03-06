import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: new FloatingActionButton(
        onPressed: (){},
        child: new Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(
        color: Colors.white,
        child: new Container(
          height: 50.0,
          child: new Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home,size: 30,),onPressed: (){},),
            IconButton(icon: Icon(Icons.list,size:40),onPressed: (){},),
            IconButton(icon: Icon(Icons.calendar_today),onPressed: (){},),
            IconButton(icon: Icon(Icons.person),onPressed: (){},),
          ],
        ), 
        ) 
      ),
      
    );
  }
}