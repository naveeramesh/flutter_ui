import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

class CustomBottomBar extends StatefulWidget {
  final bool dark;
  const CustomBottomBar({Key key, this.dark}) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0, right: 20, bottom: 10),
      child: Container(
        width: double.infinity,
        height: 60,
        decoration: BoxDecoration(
            color: Colors.grey, borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.home,
              color: widget.dark ? Colors.white : Colors.black,
            ),
            Icon(
              Icons.widgets,
              color: widget.dark ? Colors.white : Colors.black,
            ),
            Icon(
              Icons.search,
              color: widget.dark ? Colors.white : Colors.black,
            ),
            Icon(
              Icons.person,
              color: widget.dark ? Colors.white : Colors.black,
            )
          ],
        ),
      ),
    );
  }
}
