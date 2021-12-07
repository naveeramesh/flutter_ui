import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListView extends StatefulWidget {
  const ListView({Key key}) : super(key: key);

  @override
  _ListViewState createState() => _ListViewState();
}

class _ListViewState extends State<ListView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: Text(
          "Cart",
          style: GoogleFonts.ubuntu(color: Colors.black, fontSize: 25),
        ),
      ),
    );
  }
}
