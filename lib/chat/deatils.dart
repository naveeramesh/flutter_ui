import 'package:flutter/material.dart';
import 'package:flutter_ui/chat/userinfo.dart';
import 'package:google_fonts/google_fonts.dart';

class Details extends StatefulWidget {
  final User chat;
  const Details({Key key, this.chat}) : super(key: key);

  @override
  _DetailsState createState() => _DetailsState();
}

class _DetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(widget.chat.imageurl),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "${widget.chat.username}",
                  style: GoogleFonts.ubuntu(
                      color: Colors.grey,
                      fontWeight: FontWeight.w600,
                      fontSize: 12),
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    Text(
                      "${widget.chat.chatmessage}",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontWeight: FontWeight.w600,
                          fontSize: 12),
                    ),
                    SizedBox(
                      width: 100,
                    ),
                    CircleAvatar(
                        radius: 10,
                        backgroundColor: widget.chat.numchat == '0'
                            ? Colors.transparent
                            : Colors.purple,
                        child: Text("${widget.chat.numchat}",
                            style: GoogleFonts.ubuntu(
                              fontSize: 10,
                              color: widget.chat.numchat == '0'
                                  ? Colors.transparent
                                  : Colors.white,
                            ))),
                  ],
                ),
              ],
            )
          ],
        ),
      ],
    );
  }
}
