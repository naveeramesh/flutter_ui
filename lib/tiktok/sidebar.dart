import 'package:flutter/material.dart';
import 'package:flutter_ui/tiktok/videodetail.dart';
import 'package:google_fonts/google_fonts.dart';

class SideBar extends StatefulWidget {
  const SideBar({Key key, this.video}) : super(key: key);
  final Video video;
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
          backgroundImage: NetworkImage(widget.video.imageurl),
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
              "${widget.video.likes}",
              style: GoogleFonts.ubuntu(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/chat.png',
                height: 30,
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Text(
              "${widget.video.comments}",
              style: GoogleFonts.ubuntu(color: Colors.white),
            ),
          ],
        ),
        Column(
          children: [
            Container(
              child: Image.asset(
                'assets/images/share.png',
                height: 30,
              ),
            ),
          ],
        ),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: Colors.white,
              image: DecorationImage(
                  image: NetworkImage(widget.video.songimage),
                  fit: BoxFit.cover)),
        )
      ],
    );
  }
}
