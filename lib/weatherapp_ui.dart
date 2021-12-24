import 'package:flutter/material.dart';
class Weather extends StatefulWidget {
  const Weather({ Key key }) : super(key: key);

  @override
  _WeatherState createState() => _WeatherState();
}

class _WeatherState extends State<Weather> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(32,37,66,1),
      
    );
  }
}