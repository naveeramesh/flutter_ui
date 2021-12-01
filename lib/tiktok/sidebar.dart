import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key key}) : super(key: key);

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isliked = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        CircleAvatar(
          radius: 20,
          backgroundColor: Colors.white,
          backgroundImage: NetworkImage(
              "https://images.pexels.com/photos/1114690/pexels-photo-1114690.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
        ),
        Column(
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isliked = true;
                });
              },
              child: Icon(
                Icons.favorite_sharp,
                size: 30,
                color: isliked == true ? Colors.red : Colors.white,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "1.2M",
              style: GoogleFonts.ubuntu(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.message,
              size: 30,
              color: Colors.white,
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "200k",
              style: GoogleFonts.ubuntu(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Icon(
              Icons.share,
              size: 30,
              color: Colors.white,
            ),
          ],
        ),
        Container(
          height: 40,
          width: 50,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.pexels.com/photos/1103970/pexels-photo-1103970.jpeg?auto=compress&cs=tinysrgb&dpr=2&w=500"),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
