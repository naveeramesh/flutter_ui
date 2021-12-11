import 'package:flutter/material.dart';
import 'dart:math';

class Custom_Loader extends StatefulWidget {
  const Custom_Loader({Key key}) : super(key: key);

  @override
  _Custom_LoaderState createState() => _Custom_LoaderState();
}

class _Custom_LoaderState extends State<Custom_Loader>
    with TickerProviderStateMixin {
  AnimationController controller;
  Animation<double> animation_rotation;
  Animation<double> animation_radius_in;
  Animation<double> animation_radius_out;
  final double initialradius = 30.0;
  double radius = 0.0;
  @override
  void initState() {
    print(radius);
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 1.0, curve: Curves.linear)));

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 100.0,
          width: 100.0,
          child: RotationTransition(
            turns: animation_rotation,
            child: Stack(
              children: [
                Circle(radius: 30, color: Colors.grey[300]),
                Transform.translate(
                  offset: Offset(radius * cos(pi / 4), radius * sin(pi / 4)),
                  child: Circle(radius: 7, color: Colors.red),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(2 * pi / 4), radius * sin(2 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.pink),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(3 * pi / 4), radius * sin(3 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.yellow),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(4 * pi / 4), radius * sin(4 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.orange),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(5 * pi / 4), radius * sin(5 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.green),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(6 * pi / 4), radius * sin(6 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.amber),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(7 * pi / 4), radius * sin(7 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.black),
                ),
                Transform.translate(
                  offset: Offset(
                      radius * cos(8 * pi / 4), radius * sin(8 * pi / 4)),
                  child: Circle(radius: 7, color: Colors.blue),
                ),
              ],
            ),
          ),
        ),
        ElevatedButton(
            style: ElevatedButton.styleFrom(
                primary: Colors.black,
                textStyle:
                    TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
            onPressed: () {
              _buttonclick();
            },
            child: Text("Click to blink and rotate"))
      ],
    );
  }

  void _buttonclick() {
    print(radius);
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 5));

    animation_rotation = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 1.0, curve: Curves.linear)));

    animation_radius_in = Tween<double>(begin: 1.0, end: 0.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.75, 1.0, curve: Curves.elasticIn)));

    animation_radius_out = Tween<double>(begin: 0.0, end: 1.0).animate(
        CurvedAnimation(
            parent: controller,
            curve: Interval(0.0, 0.25, curve: Curves.elasticOut)));

    controller.addListener(() {
      setState(() {
        if (controller.value >= 0.75 && controller.value <= 1.0) {
          radius = animation_radius_in.value * initialradius;
          print(radius);
        } else if (controller.value >= 0.0 && controller.value <= 0.25) {
          radius = animation_radius_out.value * initialradius;
          print(radius);
        }
      });
    });
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {}
    });

    controller.repeat();
  }
}

class Circle extends StatelessWidget {
  const Circle({Key key, this.color, this.radius}) : super(key: key);

  final double radius;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: this.radius,
        height: this.radius,
        decoration: BoxDecoration(color: this.color, shape: BoxShape.circle),
      ),
    );
  }
}
