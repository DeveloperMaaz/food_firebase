import 'package:flutter/material.dart';
import 'package:welcome/items.dart/widgets.dart';
import 'package:welcome/profilr.dart';

class itemWidget extends StatelessWidget {
  final Item item;
  const itemWidget({Key key, @required this.item}) :assert(item!=null), super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: StadiumBorder(),
      //elevation: 0.0,
      child:
      ListTile( 

        onTap: ()=>Navigator.push(context,MaterialPageRoute(

          builder: (context)=>profile(
          item.image,item.name,
        ),),),
        leading: Image.asset(item.image),
        title: Text(item.name),
        subtitle: Text(item.desc),
        trailing: Text('\$${item.price}',
            style: TextStyle(
            color: Colors.deepPurple,
              fontWeight: FontWeight.bold,

        ),
          textScaleFactor: 1.3,
      ),
      ),
    );
  }
}
