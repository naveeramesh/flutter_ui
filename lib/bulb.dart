import 'package:flutter/material.dart';

class Bulb extends StatefulWidget {
  const Bulb({Key key}) : super(key: key);

  @override
  _BulbState createState() => _BulbState();
}

class _BulbState extends State<Bulb> {
  bool bulb_on = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bulb_on ? Colors.yellow : Colors.white,
      body: GestureDetector(
        onTap: () {
          setState(() {
            bulb_on = !bulb_on;
          });
        },
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: bulb_on
              ? Image.asset('assets/images/bulb_on.png')
              : Image.asset('assets/images/bulb_off.jpg'),
        ),
      ),
    );
  }
}
