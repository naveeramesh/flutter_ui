import 'package:flutter/material.dart';
import 'package:flutter_ui/swipecard.dart';
import 'package:google_fonts/google_fonts.dart';
import 'items.dart';

class ListTile_View extends StatefulWidget {
  final Items items;
  const ListTile_View({Key key, this.items}) : super(key: key);

  @override
  _ListTile_ViewState createState() => _ListTile_ViewState();
}

class _ListTile_ViewState extends State<ListTile_View> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(
              color: Colors.grey[400], borderRadius: BorderRadius.circular(20)),
          height: 100,
          width: double.infinity,
          child: Row(
            children: [
              Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    height: 100,
                    width: 90,
                    decoration: BoxDecoration(
                      color: Colors.grey,
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                          image: NetworkImage(widget.items.image),
                          fit: BoxFit.cover),
                    ),
                  )),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${widget.items.name}',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 5),
                  Text(
                    '₹ ${widget.items.price}',
                    style: GoogleFonts.ubuntu(fontWeight: FontWeight.normal),
                  ),
                ],
              ),
              Spacer(),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.delete,
                      color: Colors.orange[800],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(
                      'Q: ${widget.items.quantity}',
                      style: GoogleFonts.ubuntu(fontWeight: FontWeight.normal),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
