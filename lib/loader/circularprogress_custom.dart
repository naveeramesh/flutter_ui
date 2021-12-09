import 'custom_loader.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomCircluarProgress extends StatefulWidget {
  const CustomCircluarProgress({Key key}) : super(key: key);

  @override
  _CustomCircluarProgressState createState() => _CustomCircluarProgressState();
}

class _CustomCircluarProgressState extends State<CustomCircluarProgress> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        centerTitle: true,
        title: Text("Custom Circular Progress indicator",
            style: GoogleFonts.ubuntu()),
      ),
      body: Center(
        child: Custom_Loader(),
      ),
    );
  }
}
