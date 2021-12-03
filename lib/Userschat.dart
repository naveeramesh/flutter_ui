import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersChat extends StatefulWidget {
  const UsersChat({Key key}) : super(key: key);

  @override
  _UsersChatState createState() => _UsersChatState();
}

class _UsersChatState extends State<UsersChat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          title: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: Colors.purple,
                size: 20,
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                "Chat",
                style: GoogleFonts.ubuntu(
                    color: Colors.purple, fontWeight: FontWeight.bold),
              ),
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
                        backgroundImage:
                            AssetImage('assets/images/model1.jpeg'),
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
                        backgroundImage:
                            AssetImage('assets/images/model2.jpeg'),
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
                        backgroundImage:
                            AssetImage('assets/images/model3.jpeg'),
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
                        backgroundImage:
                            AssetImage('assets/images/model4.jpeg'),
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
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model4.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@wander",
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
                          "Hi, Hope everything is good.❤️",
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
                            backgroundColor: Colors.purple,
                            child: Text("1",
                                style: GoogleFonts.ubuntu(fontSize: 10))),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model2.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@mathew_mat",
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
                          "Hi, Hope everything is good.❤️",
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
                            backgroundColor: Colors.purple,
                            child: Text("2",
                                style: GoogleFonts.ubuntu(fontSize: 10))),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model1.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@noha",
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
                          "Hi, Hope everything is good.❤️",
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model3.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@sicca",
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
                          "Hi, All is well for today and....😊",
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
                            backgroundColor: Colors.purple,
                            child: Text("1", style: GoogleFonts.ubuntu())),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model6.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@vicca_sim",
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
                          "Hi, Hope everything is good.😂",
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
                            backgroundColor: Colors.purple,
                            child: Text("1", style: GoogleFonts.ubuntu())),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model5.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@lica_sima",
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
                          "Happy weekend",
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20.0, left: 20),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/images/model7.jpeg'),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "@angel_henry",
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
                          "Take your time and infrom us....",
                          style: GoogleFonts.ubuntu(
                              color: Colors.grey,
                              fontWeight: FontWeight.w600,
                              fontSize: 12),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            )
          ],
        ));
  }
}
