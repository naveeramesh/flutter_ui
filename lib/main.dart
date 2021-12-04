import 'package:flutter/material.dart';
import 'package:flutter_ui/bulb.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const Bulb());
  }
}
