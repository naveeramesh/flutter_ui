import 'package:flutter/material.dart';
import 'package:flutter_ui/Animations/item_values.dart';
import 'package:flutter_ui/Animations/list_tile.dart';
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
                        backgroundColor: Colors.orange[800],
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
            Container(
              height: MediaQuery.of(context).size.height / 1.60,
              child: ListView.builder(
                  itemCount: item_list.length,
                  itemBuilder: (context, index) {
                    return ListTile_View(
                      items: item_list[index],
                    );
                  }),
            ),
            Expanded(
                child: Padding(
              padding: const EdgeInsets.only(
                  left: 20.0, right: 20, top: 20, bottom: 20),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.orange[800],
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Sub Total : ",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                          Text(" ₹ 1000",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Taxes : ",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                          Text(" ₹ 100",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Total : ",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                          Text(" ₹ 1100",
                              style: GoogleFonts.ubuntu(color: Colors.white)),
                        ],
                      ),
                    ),
                    Spacer(),
                    Center(
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.white),
                        child: Center(
                          child: Text(" Check out",
                              style: GoogleFonts.ubuntu(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
              ),
            ))
          ],
        ));
  }
}
