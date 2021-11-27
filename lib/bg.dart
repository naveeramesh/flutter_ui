import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_tindercard/flutter_tindercard.dart';
import 'package:google_fonts/google_fonts.dart';

class SwipeCard extends StatefulWidget {
  const SwipeCard({Key key}) : super(key: key);

  @override
  _SwipeCardState createState() => _SwipeCardState();
}

class _SwipeCardState extends State<SwipeCard> {
  CardController controller;
  int counter;
  @override
  List images = [
    "https://images.pexels.com/photos/2669601/pexels-photo-2669601.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/3404474/pexels-photo-3404474.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500",
    "https://images.pexels.com/photos/1719233/pexels-photo-1719233.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"
  ];
  Widget build(BuildContext context) {
    return Scaffold(
      body: TinderSwapCard(
        swipeUp: true,
        swipeDown: true,
        orientation: AmassOrientation.BOTTOM,
        totalNum: images.length,
        stackNum: 3,
        swipeEdge: 4.0,
        maxWidth: MediaQuery.of(context).size.width * 0.9,
        maxHeight: MediaQuery.of(context).size.height * 0.9,
        minWidth: MediaQuery.of(context).size.width * 0.8,
        minHeight: MediaQuery.of(context).size.height * 0.8,
        cardBuilder: (context, index) => Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 5, spreadRadius: 2, color: Colors.white12)
                ]),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Stack(children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: NetworkImage('${images[index]}'),
                          fit: BoxFit.cover),
                    ),
                  ),
                ),
              ]),
            )),
        cardController: controller = CardController(),
        swipeUpdateCallback: (DragUpdateDetails details, Alignment align) {
          /// Get swiping card's alignment
          if (align.x < 0) {
            //Card is LEFT swiping
          } else if (align.x > 0) {
            //Card is RIGHT swiping
          }
        },
        swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
          counter = index;
          print("$counter ${orientation.toString()}");
        },
      ),
    );
  }
}
