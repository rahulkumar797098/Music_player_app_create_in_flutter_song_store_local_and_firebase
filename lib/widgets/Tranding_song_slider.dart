

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../colors.dart';

class TrendingSongSlider extends StatelessWidget {
  const TrendingSongSlider({super.key});

  @override
  Widget build(BuildContext context) {

    //..............SLIDER..................//
    List<Widget> sliderItem = [
      Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(18) ,
          image: DecorationImage(
              image: AssetImage("assets/images/poster.jpg") ,
            fit: BoxFit.cover
          )
          
        ),

        // ......................TRANDING .........................//
        child: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          padding: EdgeInsets.all(6)
                          ,decoration: BoxDecoration(
                            color: appGray ,
                            borderRadius: BorderRadius.circular(10)
                          ),
                            child: Row(
                              children: [
                                Container(
                                  height: 15 ,
                                    width: 15
                                    ,child: SvgPicture.asset("assets/icon/musicsvg.svg")) ,
                                SizedBox(width: 5,) ,

                                Text(("Tranding" ) , style: TextStyle( color: appWhit , fontSize: 8),
                                )




                              ],
                            )),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),

      )
    ] ;

    // ....................................... SLIDER ..........................//
    return CarouselSlider(
        items: sliderItem,
        options: CarouselOptions(
          height: 300,
          viewportFraction: 0.9,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: Duration(seconds: 4),
          autoPlayAnimationDuration: Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          enlargeFactor: 0.3,
          onPageChanged: (index , value){},
          scrollDirection: Axis.horizontal,
        )
    );
  }
}
