import 'package:flutter/material.dart';

import 'data.dart';

class Page_View extends StatefulWidget {
  final Items items;

  const Page_View({
    Key key,
    this.items,
  }) : super(key: key);

  @override
  _Page_ViewState createState() => _Page_ViewState();
}

class _Page_ViewState extends State<Page_View> {
  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
      SizedBox(
        height: MediaQuery.of(context).size.height / 10,
      ),
      Container(
          height: MediaQuery.of(context).size.height / 2,
          child: Image.asset(widget.items.imageurl)),
      SizedBox(
        height: 30,
      ),
      Padding(
          padding: EdgeInsets.only(bottom: 10),
          child: Container(
              child: Text(
            "${widget.items.title}",
          ))),
      Padding(
          padding: EdgeInsets.only(top: 10),
          child: Container(
            child: Center(
                child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "${widget.items.description}",
              ),
            )),
          )),
    ]);
  }
}
