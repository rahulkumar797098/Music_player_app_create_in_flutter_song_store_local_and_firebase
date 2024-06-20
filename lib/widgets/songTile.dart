
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';

class SongTile extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return Padding(
     padding: const EdgeInsets.all(10.0),
     child: Container(
       decoration: BoxDecoration(
         borderRadius: BorderRadius.circular(10),
         color: appTileGray

       ),
       child: Row(
         children: [
           Icon(Icons.play_arrow_rounded , size: 50, color: appBarBac,) ,
           Text("Rab ne bana di jori" , style:  TextStyle(fontSize: 22 , color: appWhit),)
         ],
       ),
     ),
   );
  }

}