import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ListViews extends StatefulWidget {
  const ListViews({Key key}) : super(key: key);

  @override
  _ListViewsState createState() => _ListViewsState();
}

class _ListViewsState extends State<ListViews> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Cart",
              style: GoogleFonts.ubuntu(color: Colors.black, fontSize: 25),
            ),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10.0),
                  child: Icon(
                    Icons.shopping_bag,
                    size: 28,
                    color: Colors.grey,
                  ),
                ),
                Positioned(
                    top: 0,
                    left: 13,
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.red,
                      child: Text(
                        "4",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 10,
                            fontWeight: FontWeight.bold),
                      ),
                    ))
              ],
            )
          ],
        ),
      ),
      body: Column(
        children: [
          
        ],
      ),
    );
  }
}
