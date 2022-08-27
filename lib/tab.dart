import 'package:flutter/material.dart';

class tab extends StatefulWidget {
  String Ur;
  tab(this.Ur);


  @override
  _tabState createState() => _tabState();
}

class _tabState extends State<tab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Image.network(widget.Ur,fit: BoxFit.cover),
            Text('Pizza',
            style: TextStyle(
              fontSize: 29.0,
            ),),
          ],
        ),
      ),
    );
  }
}
