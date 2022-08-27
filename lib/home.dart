import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'items.dart/ItemWidget.dart';
import 'items.dart/widgets.dart';
import 'items.dart/widgets.dart';
import 'login.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.orangeAccent,
      appBar: AppBar(



        title: Center(
          child: Text(
              'List of Shopping'
                  ,
            style: TextStyle(
              color: Colors.black,
            ),
          ),

        ),

        actions: [
          Icon(Icons.home),
        ],

      ),




      body:Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView.builder(
        itemCount: Catalog.items.length,
          itemBuilder: (context,index){
        return itemWidget(item: Catalog.items[index],);
          },
        ),

      ),

    );
  }
}