import 'dart:async';

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
        child: Material(
          child: Form(
            key: _formkey,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,

                //mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image(
                    image: AssetImage('images/fodi.jpg'),
                    height: 320.0,
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
                                labelText: "User Name", hintText: "Your Name"),
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
                              () => Navigator.pushNamed(context, '/third')),
                          child: AnimatedContainer(
                            duration: Duration(seconds: 1),
                            width: ChangeButton ? 40 : 150,
                            height: 45,
                            alignment: Alignment.center,
                            child: ChangeButton ? Icon(Icons.done) : Text(
                                    'Login',
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
