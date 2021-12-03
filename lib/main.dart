import 'package:flutter/material.dart';
import 'package:flutter_ui/Userschat.dart';
import 'package:flutter_ui/tiktok/tiktokui.dart';

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
        home: const UsersChat());
  }
}
