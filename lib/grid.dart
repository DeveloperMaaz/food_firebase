import 'package:flutter/material.dart';
import 'package:welcome/tab.dart';

class grid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(

      color: Colors.white30,
      child: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.0,
          scrollDirection: Axis.horizontal,
          padding: const EdgeInsets.all(4.0),
          mainAxisSpacing: 4.0,
          crossAxisSpacing: 4.0,
          children: <String>[
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg','https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg','https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg','https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg','https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg','https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',
            'https://picjumbo.com/wp-content/uploads/slice-of-pizza-1080x720.jpg',

          ].map((String url) {
            return GridTile(
                child: Material(
                  elevation: 0.0,
                  shadowColor: Colors.black,
                  child: InkWell(
                    onTap: (){
                      Navigator.push(context, MaterialPageRoute(
                          builder: (context)=>tab(url)));
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(0.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.transparent,
                          image: DecorationImage(
                            image: NetworkImage(url),
                          ),
                        ),
                        child: Text('Pizza Chese',
                        style: TextStyle(
                          fontSize: 23.0,
                        ),),
                      ),

                    ),
                  ),

                ));
          }).toList()),
    );
  }
}