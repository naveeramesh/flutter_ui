import 'package:flutter/material.dart';
import 'package:flutter_ui/tiktok/videodetail.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:marquee/marquee.dart';

class DescriptionBar extends StatefulWidget {
  final Video video;
  const DescriptionBar({Key key, this.video}) : super(key: key);

  @override
  State<DescriptionBar> createState() => _DescriptionBarState();
}

class _DescriptionBarState extends State<DescriptionBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text("@${widget.video.username}",
              style: GoogleFonts.ubuntu(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              )),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 8),
          child: Text('${widget.video.caption}',
              style: GoogleFonts.ubuntu(
                fontSize: 15,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              )),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.music_note,
                color: Colors.white,
              ),
              SizedBox(
                width: 4,
              ),
              Container(
                height: 30,
                width: MediaQuery.of(context).size.width / 1.75,
                child: Marquee(
                  text: "${widget.video.audioname}",
                  style: GoogleFonts.ubuntu(color: Colors.white),
                  scrollAxis: Axis.horizontal,
                  velocity: 100.0,
                  pauseAfterRound: Duration(seconds: 1),
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
