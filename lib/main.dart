import 'package:flutter/material.dart';
import 'package:flutter_ui/Cart/list_view.dart';
import 'package:flutter_ui/Onboarding/on_boardong.dart';
import 'package:flutter_ui/chat/detail_chat.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // themeMode: ThemeMode.light,
        // darkTheme: ThemeData(
        //     brightness: Brightness.dark, colorScheme: ColorScheme.dark()),
        debugShowCheckedModeBanner: false,
        title: 'Flutter UI',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home:  Onboarding());
  }
}
