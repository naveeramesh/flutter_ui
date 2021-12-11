import 'package:flutter/material.dart';
import 'package:flutter_ui/chat/details.dart';
import 'package:flutter_ui/chat/userdata_chat.dart';
import 'package:google_fonts/google_fonts.dart';

class UserChat extends StatefulWidget {
  const UserChat({Key key}) : super(key: key);

  @override
  _UserChatState createState() => _UserChatState();
}

class _UserChatState extends State<UserChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: [
            Icon(
              Icons.arrow_back_ios_new_outlined,
              color: Colors.purple,
              size: 18,
            ),
            SizedBox(width: 10),
            Text(
              "Chat",
              style: (GoogleFonts.ubuntu(
                  color: Colors.purple, fontWeight: FontWeight.bold)),
            )
          ],
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: Row(
              children: [
                Text(
                  "Recently Chatted",
                  style: GoogleFonts.ubuntu(
                      color: Colors.grey, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10, left: 20, right: 40),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/model1.jpeg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Noha Chavula",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/model2.jpeg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Mat Mathew",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/model3.jpeg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Sicca hectae",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
                Column(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage('assets/images/model4.jpeg'),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "Wander ",
                      style: GoogleFonts.ubuntu(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0, top: 20),
            child: Row(
              children: [
                Text(
                  "Messages",
                  style: GoogleFonts.ubuntu(
                      color: Colors.purple,
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: Container(
              child: ListView.builder(
                itemCount: chat_details.length,
                itemBuilder: (context, index) {
                  return Container(
                    child: Details(
                      chat: chat_details[index],
                    ),
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}
