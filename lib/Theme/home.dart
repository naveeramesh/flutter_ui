import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_ui/Theme/custombottombar.dart';

class Home extends StatefulWidget {
  const Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool dark = false;
  @override
  void initState() {
    var brightness = SchedulerBinding.instance.window.platformBrightness;
    bool darkModeOn = brightness == Brightness.dark;
    setState(() {
      dark = darkModeOn;
    });
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: dark ? Colors.black : Colors.white,
      appBar: AppBar(
        title: Text(
          "Theme Settings",
          style: TextStyle(color: dark ? Colors.white : Colors.black),
        ),
        backgroundColor: dark ? Colors.transparent : Colors.white,
        elevation: 0,
        actions: [
          Switch(
              activeColor: dark ? Colors.red : Colors.green,
              value: dark,
              onChanged: (state) {
                setState(() {
                  dark = state;
                });
              })
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          CustomBottomBar(
            dark: dark,
          )
        ],
      ),
    );
  }
}
