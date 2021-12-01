import 'package:flutter/material.dart';
import 'package:flutter_ui/assistant.dart';
import 'package:flutter_ui/hiddendrawer.dart';
import 'package:flutter_ui/swipecard.dart';
import 'package:flutter_ui/login.dart';
import 'package:flutter_ui/tiktok/tiktokui.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const TikTokUi());
  }
}
