import 'dart:async';

import 'package:flutter/material.dart';

class signup extends StatefulWidget {
  const signup({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<signup> {
  String _name = "";
  bool ChangeButton = false;
  final _formkey = GlobalKey<FormState>();

  moveToNext(BuildContext context) async {
    if (_formkey.currentState.validate()) {
      setState(() {
        ChangeButton = true;
      });
      await Future.delayed(
        Duration(seconds: 1),
      );

      await Navigator.pushNamed(context, '/second');

      setState(() {
        //for return back to previous shape
        ChangeButton = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        body: SingleChildScrollView(
         // reverse: true,
          child: Material(
          child: Form(
            key: _formkey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,

              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Image(
                  image: AssetImage('images/fodi.jpg'),
                  height: 270.0,
                  width: 210.0,
                  fit: BoxFit.cover,
                ),
                SizedBox(
                  height: 12.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    'Welcome  $_name',
                    style: TextStyle(
                      fontSize: 40.0,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 14.0, horizontal: 14.0),
                  child: Column(
                    children: [
                      TextFormField(
                          decoration: InputDecoration(
                              labelText: "User First Name", hintText: "Your 1st name"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "User name can't be empty";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            _name = value;
                            setState(() {});
                          }),

                      TextFormField(
                          decoration: InputDecoration(
                              labelText: "User second Name", hintText: "Your 2nd name"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "User name can't be empty";
                            } else {
                              return null;
                            }
                          },
                          onChanged: (value) {
                            _name = value;
                            setState(() {});
                          }),

                      TextFormField(
                          decoration: InputDecoration(
                              labelText: "User Email", hintText: "Your Email"),
                          validator: (value) {
                            if (value.isEmpty) {
                              return "User name can't be empty";
                            }
                            else if(value.length<10){
                              return "Your Email is incorrect";
                            }
                            else {
                              return null;
                            }
                          }
                      ),


                      TextFormField(
                        obscureText: true,
                        decoration: InputDecoration(
                            labelText: "Password", hintText: 'User Password'),
                        validator: (value) {
                          if (value.isEmpty) {
                            return "Value is empty";
                          } else if (value.length < 6) {
                            return "Password must contain 6 characters";
                          } else {
                            return null;
                          }
                        },
                      ),
                      SizedBox(height: 22.0),
                      InkWell(
                        onTap: () => Timer(Duration(seconds: 2),
                            () => Navigator.pushNamed(context, '/second')),
                        child: AnimatedContainer(
                          duration: Duration(seconds: 1),
                          width: ChangeButton ? 40 : 150,
                          height: 45,
                          alignment: Alignment.center,
                          child: ChangeButton ? Icon(Icons.done) : Text(
                                  'SignUp',
                                  style: TextStyle(
                                    fontSize: 16.0,
                                  ),
                                ),
                          decoration: BoxDecoration(
                            color: Colors.cyan,
                            borderRadius:
                                BorderRadius.circular(ChangeButton ? 50 : 8),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('Already have an account',
                          style: TextStyle(

                          ),
                          ),
                          TextButton(onPressed:(){
                            Navigator.pushNamed(context, '/second');
                          },

                            child:Text('Login',
                            style: TextStyle(
                              fontSize: 20.0
                            ),
                            ), )

                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ),
        ),
    );
  }
}
