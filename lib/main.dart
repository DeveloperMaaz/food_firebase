import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:welcome/food.dart';
import 'package:welcome/grid.dart';
import 'package:welcome/register/signup.dart';
import 'package:welcome/splashScreen/splashscreen.dart';
import 'login.dart';
import 'home.dart';
void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {

       // '/':(context)=>splashScreen(),
        '/':(context)=>LoginPage(),


        '/second':(context)=>LoginPage(),

        //'/':(context)=>grid(),
      },

      themeMode: ThemeMode.light,
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black87),
        ),


        brightness: Brightness.light,
        fontFamily: GoogleFonts.lato().fontFamily,
      ),
    );
  }
}