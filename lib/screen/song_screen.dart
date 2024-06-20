

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../colors.dart';
import '../widgets/Tranding_song_slider.dart';
import '../widgets/songTile.dart';

class SongScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SongScreenState();
}

class _SongScreenState extends State<SongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      //..............AAP BAR ..............//
        appBar: AppBar(
          title:  Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //............... MENU.............//
            IconButton(onPressed: (){}, icon: Icon(Icons.menu)) ,
               Text(
                "You Music",
                style: TextStyle(fontSize: 25,
                    fontWeight: FontWeight.bold , color: Colors.pinkAccent ),
              ),

              //...................IMAGE...................//
              Container(
                height: 50,
                  width: 50,
                  child: Image.asset("assets/images/music (2).png")) ,
            ],
          ),
          centerTitle: true,
          backgroundColor: appBarBac,
        ),
        backgroundColor: appBackGround,
        body:  Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
            
                SizedBox(height: 30,) ,
                //......... SLIDER CALL .................//
                TrendingSongSlider() ,
                SizedBox(height: 10,) ,
                Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
            
                      Text("Online Song" , style: TextStyle(fontSize: 20 , ),) ,
                      Text("Local Song" ,  style: TextStyle(fontSize: 20)) ,
            
                    //..................... SongTile widgets call here .........................//
            
            
                    ],
                  ),
            
                ) ,
                //................. LOCAL SONG // ONLINE SONG .....................//
                SongTile(),
                SongTile(),
                SongTile(),
                SongTile(),
                SongTile(),
                SongTile(),
              ],
            ),
          ),
        ));
  }
}
