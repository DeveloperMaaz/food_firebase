import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  // const profile({Key key}) : super(key: key);
  String image;
  String name;
  
  profile(this.image,this.name);

  @override
  _profileState createState() => _profileState();
}

// ignore: camel_case_types
class _profileState extends State<profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(

        child: Column(
          children: [
            Image(image: AssetImage(widget.image),
            ),
            Text(
              widget.name,
              style: TextStyle(
                fontSize: 28.0,

                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
