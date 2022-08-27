// import 'dart:async';

import 'dart:async';

import 'package:flutter/material.dart';



class splashScreen extends StatefulWidget {
  const splashScreen({Key key}) : super(key: key);

  @override
  _splashScreenState createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState(
    );
    Timer(Duration(seconds: 3),()=>Navigator.pushNamed(context, '/second'));

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,

        children: [
          Container(
          //color: Colors.red.shade300,
            color: Color(0xff3a3e3e),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,

          children: [

            Expanded(
                flex: 2,
                child:Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      CircleAvatar(
                        //backgroundColor: Colors.white,

                        backgroundImage: AssetImage('images/food.jpg'),



                        //  color: Colors.lightBlue,
                          //size: 38.0,


                radius: 75.0,
        ),

                      SizedBox(height: 10.0,),
                      Text('Food Band',
                      style: TextStyle(fontSize: 30.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),
                      )



                    ],
                  ),
                ),

            ),
            Expanded(
                flex: 1,
                child:Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    ),
                  SizedBox(height: 8.0,),
                  Text('Now Online food\n\t\t\t\t    At Door',
                  style: TextStyle(
                    color: Colors.white,
                  ),)
                  ],
                ),
            )


          ],
        ),
      ),

        ],
      ),
    );
  }
}
